Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  get 'admin/users'

  devise_for :users
  #devise_for :users, controllers: {
  #  sessions: 'sessions'
  #}

  resources :users, controller: 'sessions'
  

  post 'send' => 'send#index'

  resources :companycontacts

  get 'news' => 'articles#news'
  get 'news/:id-:slug' => 'articles#show_news'

  get 'projects' => 'articles#projects'
  get 'projects/project/:id-:slug' => 'articles#show_project'
  get 'projects/:id-:slug' => 'articles#show_sub'

  get 'services' => 'articles#services'
  get 'services/:id-:slug' => 'articles#sub_service'
  get 'services/service/:id-:slug' => 'articles#show_service'

  get 'contacts' => 'about#contacts'

  resources :posts

  resources :categories

  get 'about' => 'about#index'

  resources :companies

  get 'index/index'


  resources :mains

  #match '/feedback', to: 'back#send', via: 'post'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'index#index'

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
