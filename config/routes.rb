Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  # get 'reviews', to: 'reviews#show'
end
