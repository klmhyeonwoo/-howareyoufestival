Rails.application.routes.draw do
  get 'plan/index'
  root "home#index"

  get "/main" => 'post#index'

  # 기본 INDEX 화면 라우터
  get 'home/index'
  get 'market1/index'

  # 축제 이벤트 게시물 라우터
  get 'post/index'
  get 'post/new'
  post 'post/create'

  get 'post/destroy/:post_id' => 'post#destroy'
  get 'post/edit/:post_id' =>'post#edit'
  get 'post/show/:post_id' => 'post#show'
  post 'post/update/:post_id' =>'post#update'
  post 'post/status_update/:post_id' => 'post#status_update'

  # 축제 일정 게시물 라우터
  get 'plan/index'
  get 'plan/new'
  post 'plan/create'

  get 'plan/destroy/:plan_id' => 'plan#destroy'
  get 'plan/edit/:plan_id' =>'plan#edit'
  get 'plan/show/:plan_id' => 'plan#show'
  post 'plan/update/:plan_id' =>'plan#update'
  post 'plan/status_update/:plan_id' => 'plan#status_update'

  # 축제 주점 게시물 라우터
  get 'market1/index'
  get 'market1/new'
  post 'market1/create'

  get 'market1/destroy/:market1_id' => 'market1#destroy'
  get 'market1/edit/:market1_id' =>'market1#edit'
  get 'market1/show/:market1_id' => 'market1#show'
  post 'market1/update/:market1_id' =>'market1#update'
  post 'market1/status_update/:market1_id' => 'market1#status_update'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
