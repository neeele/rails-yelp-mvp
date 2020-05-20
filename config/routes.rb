Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "controller#action"
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]

    collection do
      get :top
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
