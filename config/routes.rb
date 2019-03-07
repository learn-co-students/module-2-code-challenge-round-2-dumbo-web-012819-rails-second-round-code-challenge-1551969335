Rails.application.routes.draw do
  resources :guest_episodes, only: [:new, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :new]
  resources :episodes, only: [:index]
end
