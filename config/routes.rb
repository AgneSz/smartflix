Rails.application.routes.draw do
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'movies#index'
  get '/home', to: 'static_pages#home'

end
