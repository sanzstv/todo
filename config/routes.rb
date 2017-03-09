Rails.application.routes.draw do
	resources :sessions, only: [:new, :create, :destroy]

	get "/login" => "sessions#new", as: "login"
	delete "/logout" => "sessions#destroy", as: "logout"
	root to: "todo_lists#index"
  resources :todo_lists do
    resources :todo_items
  end

#  resources :todo_lists
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
