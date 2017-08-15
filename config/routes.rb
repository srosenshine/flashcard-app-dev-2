Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :subjects, only: [:show, :index, :create] do
    # nested resource for posts
    resources :cards, only: [:show, :index,  :new, :create, :destroy]
  end
  root 'subjects#index'



end
