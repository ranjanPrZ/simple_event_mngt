Rails.application.routes.draw do
	root to: 'events#index'

  get 'signup', to: 'users#new'
  post 'register', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'logged_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'event_details/:id', to: 'events#show', as: 'event_details'
  post 'attend/:id', to: 'events#attend', as: 'attend'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
