
Rails.application.routes.draw do
  get 'chapters/index'
 
  resources :chapters do
  	resources :paths
  end
 
  root 'chapters#index'
end
