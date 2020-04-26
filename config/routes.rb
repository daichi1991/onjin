Rails.application.routes.draw do

  root "home#index"

  get 'home/index'

  devise_for :users, controllers: {
    registrations: "users/registrations",
    confirmations: "users/confirmations"
  }

  resources :users, :only => [:show]

  devise_scope :user do
    patch "users/confirm" => "users/confirmations#confirm"
  end

  resources :creators, only: [:new, :create] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
    end
  end

  resources :sounds, only: [:create] do
    member do
      get :download
    end
  end

  resources :sound_types

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end



end
