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
  
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
