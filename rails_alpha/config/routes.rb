Rails.application.routes.draw do
  root 'page#home'

  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'page/members'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
