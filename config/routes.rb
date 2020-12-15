Rails.application.routes.draw do
  
  resources :articles #do  #crea las rutas automaticamente
   #resources :coments
  #end

  root 'articles#index'
  get 'articles', action: :index, controller: 'articles'
  get 'articles/new', action: :new, controller: 'articles'
  #get 'articles/edit', action: :edit, controller: 'articles'
  get 'articles/article', action: :show, controller: 'articles'
  post 'articles' , action: :create , controller: 'articles'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
