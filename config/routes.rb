Rubynewb::Application.routes.draw do
  resources :users

  get "welcome/index"
  get "welcome/about"

  get 'live' => 'live_video#index'

  resources :posts, only: [:index, :edit, :update]

  root :to => "welcome#index"
end
