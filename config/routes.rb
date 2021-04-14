Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:new, :show, :create, :edit, :update, :destroy]

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
end
