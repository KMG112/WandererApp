
Rails.application.routes.draw do
  get 'chapters/index'
 
  resources :chapters
 
  root 'chapters#index'
end
