Rails.application.routes.draw do
  resources :products
  resources :types
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "mainframe#cn_index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  
  get 'cn_mainframe', :to => 'mainframe#cn_index', :format => false
  get 'cn_join_us', :to => 'mainframe#cn_join_us', :format => false
  get 'cn_news', :to => 'mainframe#cn_news', :format => false
  get 'cn_plans', :to => 'mainframe#cn_plans', :format => false
  get 'cn_products', :to => 'mainframe#cn_products', :format => false
  get 'cn_service', :to => 'mainframe#cn_service', :format => false
  get 'cn_about_us', :to => 'mainframe#cn_about_us', :format => false
  get 'cn_supplier', :to => 'mainframe#cn_supplier', :format => false
  get '/', :to => 'mainframe#cn_index', :format => false
end
