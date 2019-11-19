Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "api" do
    scope "v1" do
      get '/categories', to: 'v1/categories#index', format: 'json'
      get '/categories/:id', to: 'v1/categories#show', format: 'json'
      get '/articles', to: 'v1/articles#index'
      get '/articles/:id', to: 'v1/articles#show'
      post '/articles', to: 'v1/articles#create'
      put '/articles/:id', to: 'v1/articles#update'
    end
  end
end
