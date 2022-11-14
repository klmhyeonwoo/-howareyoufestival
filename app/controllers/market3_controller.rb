class Market3Controller < ApplicationController
    def playingIndex
        @market3s = Market3.all.order("id DESC") #id를 내림차순으로 정렬 (변경 로직)
        # @market3s = Market3.all.where(["status LIKE true", "%#{params[:status]}%"]).order("id DESC") (기존 로직)
      end
    
      def endIndex
        @market3s = Market3.all.order("id DESC") #id를 내림차순으로 정렬 (변경 로직)
        # @market3s = Market3.all.where(["status LIKE true", "%#{params[:status]}%"]).order("id DESC") (기존 로직)
      end
    
      def new 
      end
    
      def create
        @market3 = Market3.new
        @market3.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
        @market3.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
        @market3.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
        @market3.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
        @market3.avatar = params[:avatar]
        @market3.latitude = params[:latitude]
        @market3.longitude = params[:longitude]
        @market3.save
    
        redirect_to '/market3/playingIndex'
      end
    
    
      def destroy 
        @market3 = Market3.find(params[:market3_id])
        @market3.destroy
    
        redirect_to '/market3/playing Index'
      end
    
      def edit
        @market3 = Market3.find(params[:market3_id]) #모델에서 post에 post_id를 검색해서 가져옴
      end
    
      def update
        @market3 = Market3.find(params[:market3_id])
        @market3.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
        @market3.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
        @market3.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
        @market3.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
        @market3.latitude = params[:latitude]
        @market3.longitude = params[:longitude]
        @market3.save
        
        redirect_to "/market3/show/" + @market3.id.to_s
      end
    
      def status_update
        @market3 = Market3.find(params[:market3_id])
        @market3.status = params[:status]
        @market3.save
    
        redirect_to "/market3/show/" + @market3.id.to_s
      end
    
      def show
        @market3 = Market3.find(params[:market3_id])
        @x = 37.33063744906317
        @y = 137.11086061761377
      end
end
