Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :list, only: %i(create new edit update destroy) do
    resources :card, except: %i(index)
  end
end
