Rails.application.routes.draw do

  get 'menu/index'
  get 'menu/new'
  get 'menu/create'
  get 'menu/destroy'
  get 'menu/edit'
  get 'menu/update'
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/destroy'
  get 'profiles/create'
  get 'profiles/new'
  get 'profiles/update'
  get 'profiles/edit'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
