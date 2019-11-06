Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
end
