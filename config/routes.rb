Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :update]
  resources :favorites, only: [:create, :destroy]
  post '/users/icon', to: 'users#save_icon'

  root to: 'tops#index' 

  get 'tops/index'
  
  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end