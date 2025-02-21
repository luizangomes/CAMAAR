Rails.application.routes.draw do
  devise_for :user, :path => '/auth', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/template', to:'template#show'

  resources :reports, only: [:index]
  resources :pdf_reports, only: [:index]
  resources :surveys, only: [:index]
  get '/surveys', to:'surveys#index'
  resources :questions, only: [:index]
  resources :cclasses, only: [:index]
  get '/questions', to:'questions#index'
  resources :options, only: [:index]
  get '/options', to:'options#index'
  resources :answers, only: [:index]
  get '/answers', to:'answers#index'
  resources :cclasses, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
