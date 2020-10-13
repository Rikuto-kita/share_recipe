Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update,:delete,:show]
  resources :recipes
end
