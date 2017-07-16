Rails.application.routes.draw do
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
