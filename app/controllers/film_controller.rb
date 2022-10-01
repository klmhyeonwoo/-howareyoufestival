class FilmController < ApplicationController
    def index
        @films = Film.all.order("id DESC") #id를 내림차순으로 정렬
    end

    def new 
    end

    def create
    @film = Film.new
    @film.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @film.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @film.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @film.youtubeUrl = params[:youtubeUrl] # 모델의 status에 연결하여 status 값을 저장
    @film.youtubeKey = params[:youtubeKey]
    @film.youtubeSaveImg = params[:youtubeSaveImg]
    @film.save

    redirect_to '/film/index'
    end


    def destroy 
    @film = Film.find(params[:film_id])
    @film.destroy

    redirect_to '/film/index'
    end

    def edit
    @film = Film.find(params[:film_id]) #모델에서 post에 post_id를 검색해서 가져옴
    end

    def update
    @film = Film.find(params[:film_id])
    @film.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @film.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @film.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @film.youtubeUrl = params[:youtubeUrl] # 모델의 status에 연결하여 status 값을 저장
    @film.save
    
    redirect_to "/film/show/" + @film.id.to_s
    end

    def show
    @film = Film.find(params[:film_id])
    end
end
