Saharphotography::Application.routes.draw do

  get "photos/index"

  get "photos/edit"

  get "photos/show"

  get "photos/new"

  get "lightboxes/index"

  get "lightboxes/show"

  get "lightboxes/image_show"

  get "lightboxes/edit"

  get "lightboxes/new"

  get "workbench/lightbox"

  get "workbench/slideshow"

  get "workbench/tables"

  get "workbench/buttons"

  get "workbench/index"

  get "blog/index"

  get "printorders/index"
  get "printorders/show"
  get "printorders/edit"
  get "printorders/new"
  get "printorders/checkout"
  get "printorders/editCarts"
  get "printorders/newCarts"
  get "printorders/showCarts"

  resources :workorders, except: :index

  get "admin/index"
  get "admin/invoice"

  get "store/index"
  
  get "galleries/client"
  get "galleries/portfolio"

  resources :galleries

  get "about/index"

  get "contact/index"
  get "contact/confirmation"
  match "contact/photoshoot", to: "contact#photoshoot_new", via: :get
  match "contact/photoshoot", to: "contact#photoshoot_create", via: :post

  get "contact/mailinglist"

  get "services/index"
  get "services/weddings"
  get "services/portrait"
  get "services/corporate"
  get "home/sitemap"

  root to: "home#index"




  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
