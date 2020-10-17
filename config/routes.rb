Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  resources :users, only: [:edit,:update,:delete,:show]
  resources :recipes #do
    #collection do
     #get 'search'
    #end
  #end
end
