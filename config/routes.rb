Rails.application.routes.draw do
  
  root 'articles#index'

  resources :articles do  #crea las rutas automaticamente
   resources :comments
  end
  
  get 'articles', action: :index, controller: 'articles'
  get 'articles/new', action: :new, controller: 'articles'
  get 'articles/article', action: :show, controller: 'articles'

  post 'articles' , action: :create , controller: 'articles'
  post 'comment' , action: :create , controller: 'comments'
  post 'comment/show' , action: :show , controller: 'comments'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
