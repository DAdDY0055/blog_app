Rails.application.routes.draw do
  resources :top
  resources :blogs do
    collection do
      post :confirm
    end
  end
end