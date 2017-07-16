Rails.application.routes.draw do
  resources :cryo_products
  resources :dental_products
  # get 'contact/index'
  #
  # get 'contact/mail'

  root 'pages#home'

  get 'pages/about'

  get 'pages/products'

  # get 'pages/contact'

  get 'contact', to:"contact#index"
  post 'contact', to:"contact#mail"

end
