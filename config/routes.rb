Rails.application.routes.draw do
	resources :animals, only: [:new, :create]
  root to: 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
