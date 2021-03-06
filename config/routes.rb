TraineeApp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  
  root :to => "pages#index"
  match "/about" => "pages#about"
  match "/contact" => "pages#contact"
  match "/cities" => "cities#main"
  match "/cities/new" => "cities#new", :as => :new_city
  match "/cities/create" => "cities#create"
  match "/cities/:id/edit" => "cities#edit", :as => :edit_city
  match "/cities/:id/update" => "cities#update"
  match "/cities/:id/delete" => "cities#delete", :as => :delete_city
  match "/places" => "places#main"
  match "/places/new" =>  "places#new", :as => :new_place
  match "/places/create" => "places#create"
  match "/places/:id/edit" => "places#edit", :as => :edit_place
  match "/places/:id/update" => "places#update"
  match "/places/:id/delete" => "places#delete", :as => :delete_place

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
