Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  devise_for :users
  get '/home/about' => 'homes#about'
  resources :books, only:[:create, :index, :show, :edit, :update, :destroy]
  resources :users, only:[:index,:show, :edit, :update]

end
