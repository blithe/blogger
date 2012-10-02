Blogger::Application.routes.draw do
  resources :authors, :articles, :comments, :tags, :author_sessions

  get "tags/index"

  get "tags/show"

  match 'login' => 'author_sessions#new',		:as => :login
  match 'logout' => 'author_sessions#destroy',	:as => :logout

  root :to => 'articles#index'
end
