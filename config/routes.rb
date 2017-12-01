Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :recipes do
    resources :reviews, only: [:create]
  end

  resources :groups do
    resources :invitations, only: [:create, :destroy]
    resources :memberships
  end

  resources :group_recipes, only: [ :create ]

end
