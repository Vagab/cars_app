Rails.application.routes.draw do
  namespace :admin do
    resources :cars
    # TODO: read about nesting routes 'articles'
  end

  resources :cars, only: [:index, :show]

  root 'cars#index'
end
