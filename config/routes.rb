Rails.application.routes.draw do
  
  root to: "main#index"

  get "sign_up", to: "register#new"
  post "sign_up", to: "register#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "giftcard", to: "giftcard#order"

  get "new_order", to: "giftcard#neworder"
  post "new_order", to: "giftcard#create"
  get "order_history", to: "giftcard#orderhistory"

  get "admin", to: "adminpage#showalltable"
  get "order/:id/edit", to: "adminpage#edit"
  post "order/:id/edit", to: "adminpage#update"

end