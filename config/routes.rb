Rails.application.routes.draw do
  resources :material_products
  resources :inventory_entries
  resources :inventories
  resources :manufacture_materials
  resources :manufactures
  resources :order_items
  resources :order_dates
  resources :orders
  resources :costs
  resources :materials
  resources :products
  
  get 'products/index'
  root 'products#index'

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :destroy, :update]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
