Rails.application.routes.draw do
  root "home#index"

  # 로그인 화면 라우터
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/login' => 'devise/sessions#new'
    get '/signup' => 'devise/registrations#new'
  end


  # 기본 INDEX 화면 라우터
  get 'home/index'
  
  # 편의시설 화면 라우터
  get 'home/facilities'
  get '/facilities' => 'home#facilities'

  # 축제 이벤트 게시물 라우터
  get 'post/index'
  get 'post/new'
  post 'post/create'

  get "/main" => 'post#index'
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

  # 플리 마켓 게시물 라우터
  get 'market2/playingIndex'
  get 'market2/endIndex'
  get 'market2/new'
  post 'market2/create'

  get 'market2/destroy/:market2_id' => 'market2#destroy'
  get 'market2/edit/:market2_id' =>'market2#edit'
  get 'market2/show/:market2_id' => 'market2#show'
  post 'market2/update/:market2_id' =>'market2#update'
  post 'market2/status_update/:market2_id' => 'market2#status_update'

  # 푸드 트럭 게시물 라우터
  get 'market3/playingIndex'
  get 'market3/endIndex'
  get 'market3/new'
  post 'market3/create'

  get 'market3/destroy/:market3_id' => 'market3#destroy'
  get 'market3/edit/:market3_id' =>'market3#edit'
  get 'market3/show/:market3_id' => 'market3#show'
  post 'market3/update/:market3_id' =>'market3#update'
  post 'market3/status_update/:market3_id' => 'market3#status_update'

  # 축제 영상 게시물 라우터
  get 'film/index'
  get 'film/new'
  post 'film/create'

  get 'film/destroy/:film_id' => 'film#destroy'
  get 'film/edit/:film_id' =>'film#edit'
  get 'film/show/:film_id' => 'film#show'
  post 'film/update/:film_id' =>'film#update'
  post 'film/status_update/:film_id' => 'film#status_update'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
