Rails.application.routes.draw do
#devise_for :users
resources :friends

devise_for :users, path: 'users' 
resources :users#, :only => [:show]

devise_scope :user do
  authenticated :user do
    #root 'home#index', as: :authenticated_root
    root 'friends#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  get 'home/about'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
