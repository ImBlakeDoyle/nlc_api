Rails.application.routes.draw do

  root 'main#home'

  post '/', to: 'main#display'

  get "/all", to: 'main#index'

  get "/view", to: 'classifications#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
