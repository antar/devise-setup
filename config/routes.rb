Rails.application.routes.draw do
  devise_for :users
  resources :notes
  delete '/notes' => 'notes#destroy'
  root 'notes#index'
end
