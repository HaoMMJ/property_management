Rails.application.routes.draw do
  default_url_options :host => Rails.application.config.default_url
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end

  get 'login' => 'users#login_form'
  root to: 'property_management#index'
end
