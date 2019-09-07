Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cuisines do
    resources :meals, only: [:new, :create, :index, :show]
  end

  root 'welcome#home'
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # delete '/signout' => 'sessions#destroy'
  delete '/signout' => 'sessions#destroy'

end
