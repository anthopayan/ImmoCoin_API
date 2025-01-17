Rails.application.routes.draw do
  devise_for :users,
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
get '/member-data', to: 'members#show'
get 'users/index', to: 'users#index'
resources :accommodations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
