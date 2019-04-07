Rails.application.routes.draw do
  resources :posts
  root 'pages#landing'
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
