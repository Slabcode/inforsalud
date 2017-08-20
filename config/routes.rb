Rails.application.routes.draw do

  devise_for :admins, :skip => [:registrations]
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
