Rails.application.routes.draw do
  root 'articles#index'

  get '/articles' => 'articles#index'
  get '/articles/new' =>'articles#new', as: 'new_article'
  post '/articles/create' =>'articles#create', as: 'create_article'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
