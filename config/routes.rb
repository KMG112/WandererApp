
Rails.application.routes.draw do
  get 'chapters/index'
  get '/list' => 'chapters#list', :as => :list
  resources :chapters 
 
  root 'chapters#index'
end
