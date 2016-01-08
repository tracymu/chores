Rails.application.routes.draw do
  root 'chores#index'
  
  resources :chores

end
