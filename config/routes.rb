Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  resources :users, only: [:edit,:update,:show]do
  collection do
    get :likes
  end
end
 resources :recipes 
  post   '/like/:recipe_id' => 'likes#like',   as: 'like'
  delete '/like/:recipe_id' => 'likes#unlike', as: 'unlike'
end
