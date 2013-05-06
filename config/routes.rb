Privatesyncnet::Application.routes.draw do
  authenticated :user do
    root :to => 'welcome#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :share_items
  
  match "/my_shares" => "share_items#show_user_shares"

  
end