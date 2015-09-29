Rails.application.routes.draw do
  
  get 'welcome/index'

   resources :images
   resources :galleries
   resources :users
   root 'welcome#index'
end
