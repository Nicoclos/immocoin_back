Rails.application.routes.draw do
  
  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
      
  #     resources :realties
  #   end
  # end
  # devise_for :users,
  # defaults: { format: :json },
  # path: '',
  # path_names: {
  #   sign_in: 'api/login',
  #   sign_out: 'api/logout',
  #   registration: 'api/signup'
  # },
  # controllers: {
  #   sessions: 'sessions',
  #   registrations: 'registrations'
  # }
  devise_for :users,

  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :realties
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
