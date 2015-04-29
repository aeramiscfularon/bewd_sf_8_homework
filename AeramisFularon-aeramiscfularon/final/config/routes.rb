Rails.application.routes.draw do
  devise_for :users
  root 'bigovens#index'
  get 'about', to: 'recipes#about'
  get 'search', to: 'recipes#search'
  get 'recipes/random', to: 'recipes#random', as: 'random_recipe'
  get 'bigovens/random', to: 'bigovens#random', as: 'random_bigoven'
  resources :recipes
end
