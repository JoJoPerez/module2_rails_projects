Rails.application.routes.draw do
    get 'index/welcome'

	root 'index#welcome'

	resources :cameras

	resources :signup

	resources :contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
