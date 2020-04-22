Rails.application.routes.draw do
  get 'home/index'

  resources :creators, only: [:new, :create] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
    end
  end

  resources :users, :only => [:show]

  devise_for :users, controllers: {
    registrations: "users/registrations",
    confirmations: "users/confirmations"
  }

  devise_scope :user do
    patch "users/confirm" => "users/confirmations#confirm"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  root "home#index"

end
