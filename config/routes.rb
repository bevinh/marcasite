Marcasite::Engine.routes.draw do
  resources :pages
  resources :articles do
    resources :comments
  end
  root to: "articles#index"

  scope :admin do
    get '/', to: 'admin#index', as: :admin
    get 'general', to: 'admin#general', as: :general_admin
    get 'posts', to: 'admin#posts', as: :post_admin
    get 'pages', to: 'admin#pages', as: :page_admin
    get 'analytics',  to: 'admin#analytics', as: :analytics_admin
    get 'plugins', to: 'admin#plugins', as: :plugins_admin
  end
end
