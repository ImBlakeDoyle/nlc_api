Rails.application.routes.draw do

  root 'main#home'

  post '/', to: 'main#display'

  get "/all", to: 'main#index'

  get "/classifiers", to: 'classifications#index'

  get "/classifiers/:id", to: 'classifications#show', as: 'classifiers_show'

  delete "/classifiers", to: 'classifications#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
