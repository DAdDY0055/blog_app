Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  get 'tops/index'

  get '/', to: 'tops#index' 
  
  resources :blogs do
    collection do
      post :confirm
    end
  end

end