Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  		resources :users
  		resources :meals
  		post '/login', to: 'auth#create'
  		get '/me', to: 'users#me'
  		get '/me/meals', to: 'meals#my_meals'
  	end
  end
end
