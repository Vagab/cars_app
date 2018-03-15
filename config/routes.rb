Rails.application.routes.draw do

  namespace :admin do
    resources :cars do
      resources :articles
    end
  end

  resources :cars, only: [:index, :show]
  resources :articles, only: [:show]
  root 'cars#index'
end
