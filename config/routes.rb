Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # See all available pages : CMD: rake routes
  
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  resources :articles

end
