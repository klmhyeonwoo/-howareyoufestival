class PostController < ApplicationController
  def index
    @posts = Post.all
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
    @post.content = params[:content] # 모델의 content에 연결하여 content 값을 저장
    @post.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @post.save
    
    redirect_to '/post/index'
  end

  def status_update
    @post = Post.find(params[:post_id])
    @post.status = params[:status]
    @post.save

    redirect_to '/post/show/@post.id'
  end

  def show
    @post = Post.find(params[:post_id])
    @x = 37.27574
    @y = 127.13249
  end
end
