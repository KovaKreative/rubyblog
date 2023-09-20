Rails.application.routes.draw do
  # get 'categories/index'
  # get 'categories/edit'
  # get 'categories/new'
  # get 'categories/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :posts
  resources :categories

  # get '/posts', to: 'posts#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
