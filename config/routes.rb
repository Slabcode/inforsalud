Rails.application.routes.draw do

  resources :subjects, except: [:new,:create,:index]
  resources :working_days
  resources :semesters, except: [:new,:create,:index] do
    resources :subjects, only: [:new,:create,:index]
  end
  resources :carrers do
    resources :semesters, only: [:new,:create,:index]
  end
  resources :franchises do
    member do
      get 'link-carrer', to: "franchises#link_carrer"
      post 'link', to: "franchises#link"
      get 'show-carrers', to: "franchises#show_carrers"
    end
  end

  resources :franchises, only: [] do
    resources :carrers, only: [] do
      delete 'unlink', to: "franchises#unlink"
    end
  end
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
