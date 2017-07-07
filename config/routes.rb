Rails.application.routes.draw do
  root to: 'application#home'
  get '/about' => 'application#about'
  devise_for :users

  resources :products do
    resources :reviews, :except => [:show, :index]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
