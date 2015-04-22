Rails.application.routes.draw do
  root 'recipes#index'
  get 'search', to: 'recipes#search'
  resources :recipes
end
