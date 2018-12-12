Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    resources :pictures
    resource :users
    resource :sessions, only: %i(new create destroy)

    root 'pictures#index'






end
