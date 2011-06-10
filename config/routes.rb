SampleApp::Application.routes.draw do
  root :to => 'pages#home'
  
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'

  resources :users
  
  match '/signup', :to => 'users#new'
end

