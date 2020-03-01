Rails.application.routes.draw do
  root 'billboards#index'
  resources :billboards
  resources :artists
  resources :songs
end
