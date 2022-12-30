Rails.application.routes.draw do

  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
  }
  
  get "about" => "homes#about"

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    root :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
  scope module: :users do
    get '/users/:id/profile' => 'users#show', as: 'profile'
    resources :users, only: [:edit, :update]
    resources :posts, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :diaries
    get 'search' => 'searches#search'
    get 'spellA' => 'searches#spellA'
    get 'spellB' => 'searches#spellB'
    get 'spellC' => 'searches#spellC'
    get 'spellD' => 'searches#spellD'
    get 'spellE' => 'searches#spellE'
    get 'spellF' => 'searches#spellF'
    get 'spellZ' => 'searches#spellG'
    get 'spellH' => 'searches#spellH'
    get 'spellI' => 'searches#spellI'
    get 'spellJ' => 'searches#spellJ'
    get 'spellK' => 'searches#spellK'
    get 'spellL' => 'searches#spellL'
    get 'spellM' => 'searches#spellM'
    get 'spellN' => 'searches#spellN'
    get 'spellO' => 'searches#spellO'
    get 'spellP' => 'searches#spellP'
    get 'spellQ' => 'searches#spellQ'
    get 'spellR' => 'searches#spellR'
    get 'spellS' => 'searches#spellS'
    get 'spellT' => 'searches#spellT'
    get 'spellU' => 'searches#spellU'
    get 'spellV' => 'searches#spellV'
    get 'spellW' => 'searches#spellW'
    get 'spellX' => 'searches#spellX'
    get 'spellY' => 'searches#spellY'
    get 'spellZ' => 'searches#spellZ'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
