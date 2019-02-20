Rails.application.routes.draw do

  root 'main#home'

  post '/', to: 'main#display'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
