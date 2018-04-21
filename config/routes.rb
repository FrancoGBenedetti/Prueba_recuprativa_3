Rails.application.routes.draw do

	devise_for :users

	  resources :pokemons, only: [] do
	    member do
	      delete 'captures/destroy'
	    end
	    resources :captures, only: [:create] do
	      member do
	        post 'level_up'
	      end
	    end
	  end

	  resources :captures, only: :show

  	get 'pages/index'

	root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
