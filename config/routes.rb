Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'homepages#index'
    root 'homepages#index'

  resources :stores, only: [:new, :create]
end
