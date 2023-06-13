Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'articles', to: 'articles#index'
  get "articles/new", to: "articles#new"
  delete "articles/:id", to: "articles#destroy", as: :delete
  get "articles/:id/edit", to: "articles#edit", as: :edit
  patch "articles/:id", to: "articles#update", as: :update_article
  get 'articles/:id', to: 'articles#show', as: :article
  post "articles", to: "articles#create"
end
