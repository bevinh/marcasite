Blog::Engine.routes.draw do
  resources :articles do
  resources :comments
end
  root to: "articles#index"
  get 'admin', to: 'admin#index', as: :admin
  get 'admin/general', to: 'admin#general', as: :general_admin
  get 'admin/posts', to: 'admin#posts', as: :post_admin
end
