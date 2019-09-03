Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :circles, only: [:index, :show, :new, :create] do
    resources :circle_members, only: [:create]
  end

  resources :status_updates, only: [:index, :show, :new, :create]

  resources :slots, only: [:index, :new, :create, :update, :show]

  #resources :wishlists, only: [:index, :new, :create, :update]

  resources :conversations, only: [:index, :new, :create, :show] do
  resources :messages, only: [:create]
    end

end
