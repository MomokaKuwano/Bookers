Rails.application.routes.draw do
  get 'books/:id' => 'books#show',as:'book'
  get 'books/:id/edit' => 'books#edit',as:'edit_book'
  patch 'books/:id' => 'books#update',as:'update_book'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
  root 'homes#top'
  resources :books, only:[:new, :create, :index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
