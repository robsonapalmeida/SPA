Rails.application.routes.draw do
  resources :services
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  #get 'spa'  => 'welcome#index' 
  get 'calendar' => 'welcome#calendar'    
  get 'mesoterapia' => 'welcome#mesoterapia'

  get 'microdermoabrasion' => 'welcome#microdermoabrasion'
  get 'exfoliacionaclarante' => 'welcome#exfoliacionaclarante'
  get 'ultracavitacion' => 'welcome#ultracavitacion'
  get 'drenajelinfatico' => 'welcome#drenajelinfatico'
  get 'radiofrequencia' => 'welcome#radiofrequencia'
  get 'Citas' => 'welcome#customer_email'
  

  #resources :user_x_services -- I let it desabled cause i'd like to use as friendly name like next line,  
  #not typing into the url user_x_services, this is the model name,this name means Services that the user has
  
  #get 'userservice' => 'user_x_services#index'  
  #get 'userservice' => 'user_x_services#edit'  
  resources :user_x_services
  get 'Citas' => 'user_x_services#customer_email'
  

  
 end
