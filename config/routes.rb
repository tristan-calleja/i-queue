Rails.application.routes.draw do


  # get 'menus/index'
  # get 'menus/show'
  # get 'menus/create'
  # get 'menus/new'
  # get 'menus/destroy'
  # get 'menus/edit'
  # get 'menus/update'
  devise_for :users


#   get 'payments/index'
#   get 'payments/show'
#   get 'payments/destroy'
#   get 'payments/new'
#   get 'payments/create'
#   get 'payments/update'
#   get 'payments/edit'
#   get 'orders/index'
#   get 'orders/show'
#   get 'orders/destroy'
#   get 'orders/new'
#   get 'orders/update'
#   get 'orders/edit'
#   get 'orders/create'
#   get 'orderitems/index'
#   get 'orderitems/show'
#   get 'orderitems/destroy'
#   get 'orderitems/new'
#   get 'orderitems/create'
#   get 'orderitems/update'
#   get 'orderitems/edit'
#   get 'fooditems/index'
#   get 'fooditems/show'
#   get 'fooditems/destroy'
#   get 'fooditems/new'
#   get 'fooditems/create'
#   get 'fooditems/update'
#   get 'fooditems/edit'

  get 'menus/landing'
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/destroy'
  get 'profiles/create'
  get 'profiles/new'
  get 'profiles/update'
  get 'profiles/edit'

  resources :users do
    resources :profiles
  end

  resources :profiles

  resources :menus do
    resources :fooditems
  end
  
  resources :fooditems

  root 'menus#landing'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
