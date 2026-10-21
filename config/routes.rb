Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  root "main#index"

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  get "edit-password", to: "passwords#edit"
  patch "edit-password", to: "passwords#update"

  delete "logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
