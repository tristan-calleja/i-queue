Rails.application.routes.draw do

  devise_for :users

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

  root 'profiles#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
