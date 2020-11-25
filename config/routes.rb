Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: [:index, :new, :create] do
    resources :works do
      resources :completes, only: [:index, :new, :create]
    end
  end
  resources :user_contents, only: [:index, :new, :create, :edit, :update]
end
