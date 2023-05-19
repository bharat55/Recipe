Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes/index'
      get 'recipes/create'
      get 'recipes/show'
      get 'recipes/destroy'
    end
  end
  get 'homepage/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homepage#index"
end
