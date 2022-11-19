Rails.application.routes.draw do
  get 'new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as:'book'

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'

  root to: 'homes#top'
  get '/books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
