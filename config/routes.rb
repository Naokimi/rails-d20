Rails.application.routes.draw do
  resources :discussions do
    resources :responses, shallow: true
  end
  resources :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
