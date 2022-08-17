Rails.application.routes.draw do
  resources :muffins
  resources :ingredients
  root 'main_page#index'
  # get 'main_page/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
