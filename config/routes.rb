Rails.application.routes.draw do
  get '/sign_in', to: 'sessions#new'

  delete '/sign_out', to: 'sessions#destroy'

  post 'sessions/create'

  resources :competences
  get 'hello/greeting'

  get 'hello/bye'

  root to: 'competences#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
