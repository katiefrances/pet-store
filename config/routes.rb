Rails.application.routes.draw do
  resources :products
  # get  '/products', to: 'products#index'
  # get  '/products/:id', to: 'products#show'
  # post '/products', to: 'products#create'
  # put  '/products/:id/archive', to: 'products#archive'
  # put  '/products/:id', to: 'products#update'

  # get '/nonsenses/:silly_id/:silly_as_well', to: 'nonsenses#show'

  resources :customers do
    resources :orders, only: [ :index, :new, :create ]
  end

  resources :orders, except: [ :index, :new, :create ]

  # resources :orders [  ]

# Task from Michael:
# If I put in two params, it should find the union of both. 
# E.g. 'SKU=DOG666&price>50' will return the results that match for either SKU or price, or both.

  # /orders/12/payments
  #
  # namespace :admin do
  #   resources :products
  # end
  # resources :stores
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
