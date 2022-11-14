class Market2Controller < ApplicationController
  def playingIndex
    @market2s = Market2.all.where(["status LIKE ?", "%#{params[:status]}%"]).order("id DESC") #id를 내림차순으로 정렬
  end

  def endIndex
    @market2s = Market2.all.where(["status LIKE ?", "%#{params[:status]}%"]).order("id DESC") #id를 내림차순으로 정렬
  end

  def new 
  end

  def create
    @market2 = Market2.new
    @market2.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @market2.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @market2.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @market2.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @market2.avatar = params[:avatar]
    @market2.latitude = params[:latitude]
    @market2.longitude = params[:longitude]
    @market2.save

    redirect_to '/market2/playingIndex'
  end


  def destroy 
    @market2 = Market2.find(params[:market2_id])
    @market2.destroy

    redirect_to '/market2/playIndex'
  end

  def edit
    @market2 = Market2.find(params[:market2_id]) #모델에서 post에 post_id를 검색해서 가져옴
  end

  def update
    @market2 = Market2.find(params[:market2_id])
    @market2.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @market2.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @market2.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @market2.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @market2.latitude = params[:latitude]
    @market2.longitude = params[:longitude]
    @market2.save
    
    redirect_to "/market2/show/" + @market2.id.to_s
  end

  def status_update
    @market2 = Market2.find(params[:market2_id])
    @market2.status = params[:status]
    @market2.save

    redirect_to "/market2/show/" + @market2.id.to_s
  end

  def show
    @market2 = Market2.find(params[:market2_id])
    @x = 37.33062744906317
    @y = 127.11086061761277
  end
end
