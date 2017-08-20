Rails.application.routes.draw do

  resources :subjects
  resources :working_days
  resources :semesters
  resources :carrers
  resources :franchises
  resources :settings
  devise_for :admins, :skip => [:registrations]
  devise_for :professors, :skip => [:registrations]
  devise_for :partners, :skip => [:registrations]
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  as :professor do
    get 'professors/edit' => 'devise/registrations#edit', :as => 'edit_professor_registration'
    put 'professors' => 'devise/registrations#update', :as => 'professor_registration'
  end
  as :partner do
    get 'partners/edit' => 'devise/registrations#edit', :as => 'edit_partner_registration'
    put 'partners' => 'devise/registrations#update', :as => 'partner_registration'
  end
  as :admin  do
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end
  root to: 'statics#index'
  controller :administration do
    get 'dashboard', to: "administration#index"
  end
  resources :admins, only: [:index,:new,:create,:destroy,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
