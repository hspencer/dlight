Rails.application.routes.draw do
	root 'nodes#index'
	get 'login'=> 'users#login'
	get 'logout'=> 'users#logout'
	get 'set_color'=> 'nodes#set_color'
	get 'set_position'=> 'nodes#set_position'
	post 'auth'=> 'users#auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
