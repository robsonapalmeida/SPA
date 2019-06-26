Rails.application.routes.draw do
  resources :user_x_services
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  #get 'spa'  => 'welcome#index' 
  get 'calendar' => 'welcome#calendar'    
    
 end
