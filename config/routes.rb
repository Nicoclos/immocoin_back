Rails.application.routes.draw do
  # test
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %w[show index]
      resources :realties
    end
  end
  devise_for :users,
  defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'api/login',
    sign_out: 'api/logout',
    registration: 'api/signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
