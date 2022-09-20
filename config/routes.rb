Rails.application.routes.draw do
  resources :items, only: [:index, :show] do
    resources :users, only: [:index, :show]
  end
  resources :users, only: [:show] do
    resources :items, only: [:index, :show]
  end
  
end
