Rails.application.routes.draw do
  root 'main_page#index'
  # get 'main_page/index'
  resources :muffins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
