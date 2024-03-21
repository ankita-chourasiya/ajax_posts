Rails.application.routes.draw do
  resources :posts, only: [:new, :create]
  root 'posts#new'
end
