Blog::Engine.routes.draw do
  resources :articles do
  resources :comments
end
  root to: "articles#index"
  get 'settings', to: 'settings#index', as: :settings_path

end
