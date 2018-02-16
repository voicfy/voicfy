Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  # scope "(:locale)", locale: /en|de|es|fr/ do


    root 'welcome#index', as: 'home'
    # root to: 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  #get 'voiceovers' => 'pages#voiceovers', as: 'voiceovers'
  get 'about' => 'pages#about', as: 'about'
  get 'signin' => 'pages#signin', as: 'signin'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


  # config/routes.rb

    # devise_for :users
    devise_for :users, controllers: { registations: "registrations" }
    devise_for :models
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

    resources :voiceovers do
      resources :voicesamples
    end
    resources :users

  resources :subscribers



  # end

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
