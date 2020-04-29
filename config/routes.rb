Rails.application.routes.draw do

  root "home#index"

  get 'home/index'

  devise_for :users, controllers: {
    confirmations: 'users/confirmations' ,
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get "sign_in" => "users/session#new"
    get "sign_out" => "users/sessions#destroy"
    get "sign_up" => "users/registrations/new"
    patch "users/confirm" => "users/confirmations#confirm"
  end

  resources :users, :only => [:new, :show]

  resources :creators, only: [:new, :create] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
    end
  end

  resources :sounds, only: [:new, :create] do
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
