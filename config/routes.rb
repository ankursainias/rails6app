Rails.application.routes.draw do
  # resources :comments
  # resources :discussions
  # resources :users
  resources :posts do
  	collection do
  		get 'send_email'
  	end
  end
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
