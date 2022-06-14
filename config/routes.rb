Rails.application.routes.draw do
  root "home#index"

  get "/main" => 'post#index'

  get 'post/index'
  get 'post/new'
  get 'home/index'
  get 'home/show'
  post 'post/create'

  get 'post/destroy/:post_id' => 'post#destroy'
  get 'post/edit/:post_id' =>'post#edit'
  get 'post/show/:post_id' => 'post#show'
  post 'post/update/:post_id' =>'post#update'
  post 'post/status_update/:post_id' => 'post#status_update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
