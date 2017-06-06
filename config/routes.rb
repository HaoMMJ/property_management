Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  default_url_options :host => Rails.application.config.default_url
  root to: 'property_management#index'

  get 'customers', to: 'customer#index'
  resources :customer
  post 'customer/create', to: 'customer#create'

  get 'rooms', to: 'room#index'
end
