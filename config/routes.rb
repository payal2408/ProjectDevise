Rails.application.routes.draw do
  resources :subjects
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'samples/index'
  get 'blogs/index'
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }

  root 'students#new'
  resources :quesions
  resources :articles
  resources :students
  resources :home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
