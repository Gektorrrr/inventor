Rails.application.routes.draw do
  resources :shipments
  resources :order_items
  resources :orders
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#index'
  get 'reports', to: 'reports#index'
  post 'reports', to: 'reports#generate'
  post '/reports/generate', to: 'reports#generate', as: 'generate_report'
end
