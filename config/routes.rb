Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :activities

  patch '/quotations/:id', to: 'quotations#update_status'
  resources :quotations, except: [:destroy]
end
