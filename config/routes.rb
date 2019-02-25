Rails.application.routes.draw do

  root 'main#home'

  post '/', to: 'main#display'

  get "/all", to: 'main#index'

  get "/view", to: 'classifications#index'

  get "/show/:id", to: 'classifications#show', as:'view_classifier'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
