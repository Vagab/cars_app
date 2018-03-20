Rails.application.routes.draw do

  namespace :admin do
    resources :cars do
      resources :articles
    end
  end

  resources :cars, only: [:index, :show] do
    resources :articles, only: [:show, :index]
  end
  root 'cars#index'
end
