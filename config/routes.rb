Rails.application.routes.draw do
  resources :suppliers
  resources :customers
  resources :shipments
  resources :order_items
  resources :orders
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'reports/report_2023'
  get 'reports/report_2022'
  get 'reports/report_2021'
  root to: 'main#index'
  get '/products', to: 'products#index'
  get 'reports', to: 'reports#index'
  post 'reports', to: 'reports#generate'
  post '/reports/generate', to: 'reports#generate', as: 'generate_report'
end
