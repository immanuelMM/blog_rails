Rails.application.routes.draw do
  root 'articles#index'

  get '/articles' => 'articles#index'
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles/create', to: 'articles#create', as: :create_article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  post 'articles/:id', to: 'articles#update', as: :update_article
  get 'articles/:id', to: 'articles#destroy', as: :destroy_article
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
