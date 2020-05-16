Rails.application.routes.draw do
  devise_scope :user do
    get 'users/log_in', :to => 'users#login'
    get 'users/sign_up', :to => 'users#signup'
  end
  devise_for :users

  root 'items#index'
  resources :items, only: :index
end
