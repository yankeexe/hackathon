Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'projects#index'
resources :projects
resources :categories
resources :healthy
resources :donates
resources :teaches
resources :foods
resources :maps
end
