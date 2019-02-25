Rails.application.routes.draw do

  root 'classifications#home'

  get "/all", to: 'main#index'

  get "/query", to: 'main#home'

  post "/query", to: 'main#display'

  get "/classifiers", to: 'classifications#index'

  get "/classifiers/:id", to: 'classifications#show', as: 'classifiers_show'

  get "/classifier/new", to: 'classifications#new', as: 'classifiers_new'

  post "/classifier/create", to: 'classifications#create'

  delete "/classifiers", to: 'classifications#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
