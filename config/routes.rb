Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :users
  resources :posts do
    resources :comments, :like_posts
  end
end
