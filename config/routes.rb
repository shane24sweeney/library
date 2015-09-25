Rails.application.routes.draw do
  get 'welcome/home'

  get 'sessions/new_user'

  get 'sessions/create_user'

  get 'sessions/new_admin'

  get 'sessions/create_admin'

  get 'sessions/destroy'

  get 'sessions/new_user'
  get 'login_user' => 'sessions#new_user'
  post 'login_user' => 'sessions#create_user'
  get 'login_admin' => 'sessions#new_admin'
  post 'login_admin' => 'sessions#create_admin'
  delete 'logout' => 'sessions#destroy'
  root 'welcome#home'

  resources :users
  resources :admins
  resources :books do
    member do
      get :borrow
      get :return
    end
  end
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
end
