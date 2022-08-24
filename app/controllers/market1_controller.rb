class Market1Controller < ApplicationController
  def index
    @market1s = Market1.all.order("id DESC") #id를 내림차순으로 정렬
  end

  def new 
  end

  def create
    @market1 = Market1.new
    @market1.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @market1.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @market1.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @market1.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @market1.avatar = params[:avatar]
    @market1.latitude = params[:latitude]
    @market1.longitude = params[:longitude]
    @market1.save

    redirect_to '/market1/index'
  end


  def destroy 
    @market1 = Market1.find(params[:market1_id])
    @market1.destroy

    redirect_to '/market1/index'
  end

  def edit
    @market1 = Market1.find(params[:market1_id]) #모델에서 post에 post_id를 검색해서 가져옴
  end

  def update
    @market1 = Market1.find(params[:market1_id])
    @market1.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @market1.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @market1.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @market1.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @market1.avatar = params[:avatar]
    @market1.latitude = params[:latitude]
    @market1.longitude = params[:longitude]
    @market1.save
    
    redirect_to "/market1/show/" + @market1.id.to_s
  end

  def status_update
    @market1 = Market1.find(params[:market1_id])
    @market1.status = params[:status]
    @market1.save

    redirect_to "/market1/show/" + @market1.id.to_s
  end

  def show
    @market1 = Market1.find(params[:market1_id])
    @x = 37.33062744906317
    @y = 127.11086061761277
  end
end
