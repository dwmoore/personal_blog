Rails.application.routes.draw do
  root to: 'posts#index'

  if Rails.env.production?
    devise_for :users, :controllers => { :registrations => "registrations" } 
  else
    devise_for :users
  end

  resources :users, :posts
end
