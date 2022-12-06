Rails.application.routes.draw do

  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    root :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
  scope module: :users do
    get '/users/:id/profile' => 'users#show', as: 'profile'
    resources :users, only: [:edit, :update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
