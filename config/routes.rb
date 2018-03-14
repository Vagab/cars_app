Rails.application.routes.draw do
  namespace :admin do
    resources :cars
    # TODO: read about nesting routes 'articles'
  end

  resources :cars, only: [:index, :show]
  namespace :admin do
    resources :articles
  end
  resources :articles, only: [:show]

  root 'cars#index'
end
