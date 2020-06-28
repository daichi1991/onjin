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

  resources :creators, only: [:new, :create, :show, :update, :edit, :destroy  ] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
      get :edit
    end
  end

  resources :sounds, only: [:new, :create, :index, :show] do
    resources:downloads, only: [:create] do
    end
  end

  resources :sound_types

  resources :likes, only: [:create, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end



end
