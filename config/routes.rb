Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/edit' => 'books#edit'
  root to: 'homes#top'
  get '/books' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
