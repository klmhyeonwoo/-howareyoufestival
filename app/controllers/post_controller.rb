class PostController < ApplicationController
  def index
    @posts = Post.all.order("id DESC") #id를 내림차순으로 정렬
  end

  def new 
  end

  def create
    @post = Post.new
    @post.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @post.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @post.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @post.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @post.avatar = params[:avatar]
    @post.latitude = params[:latitude]
    @post.longitude = params[:longitude]
    @post.save

    redirect_to '/post/index'
  end


  def destroy 
    @post = Post.find(params[:post_id])
    @post.destroy

    redirect_to '/post/index'
  end

  def edit
    @post = Post.find(params[:post_id]) #모델에서 post에 post_id를 검색해서 가져옴
  end

  def update
    @post = Post.find(params[:post_id])
    @post.title = params[:title] # 모델의 title에 연결하여 post_title 값을 저장
    @post.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @post.content = params[:content] # 모델의 content에 연결하여 post_content 값을 저장
    @post.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @post.latitude = params[:latitude]
    @post.longitude = params[:longitude]
    @post.save
    
    redirect_to '/post/index'
  end

  def status_update
    @post = Post.find(params[:post_id])
    @post.status = params[:status]
    @post.save

    redirect_to '/post/show/' + @post.id.to_s
  end

  def show
    @post = Post.find(params[:post_id])
    @x = 37.33062744906317
    @y = 127.11086061761277
  end
end
