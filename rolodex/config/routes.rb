Rails.application.routes.draw do
 root 'index#names'

  get 'index/names'

	resources :names 

	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
