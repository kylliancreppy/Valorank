Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'agents', to: 'pages#agents'
  get 'weapons', to: 'pages#weapons'
  get 'maps', to: 'pages#maps'
end
