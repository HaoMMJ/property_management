Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  default_url_options :host => Rails.application.config.default_url
  root to: 'contract#index'

  get 'customers', to: 'customer#index'
  resources :customer
  post 'customer/create', to: 'customer#create'

  get 'buildings', to: 'building#index'
  resources :building
  post 'building/create', to: 'building#create'

  get 'rooms', to: 'room#index'
  resources :room
  post 'room/create', to: 'room#create'

  get 'contracts', to: 'contract#index'
  resources :contract
  post 'contract/create', to: 'contract#create'

  get 'mini_search/room', to: 'mini_search#room'
  get 'mini_search/customer', to: 'mini_search#customer'
end
