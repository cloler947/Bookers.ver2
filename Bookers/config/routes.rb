Rails.application.routes.draw do

 root 'books#top'

 get 'home/about' => 'books#about'

 post "books/new" => "books#new"


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

  resources :users, only: [:index, :show, :edit, :update]


end
