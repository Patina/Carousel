Rails.application.routes.draw do
  
  get 'welcome/index'

   resources :galleries
   resources :users
   root 'welcome#index'
end
