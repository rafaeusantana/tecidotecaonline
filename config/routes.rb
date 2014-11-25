Rails.application.routes.draw do
  devise_for :users
  resources :catalogos
  patch '/catalogos' => 'catalogos#update'
  resources :bandeiras
  patch '/bandeiras' => 'bandeiras#update'
  resources :variados
  patch '/variados' => 'variados#update'
  resources :tipo_suportes
  patch '/tipo_suportes' => 'tipo_suportes#update'
  resources :tipo_bandeiras
  patch '/tipo_bandeiras' => 'tipo_bandeiras#update'
  resources :ligamentos
  resources :tipo_item_variados
  patch '/tipo_item_variados' => 'tipo_item_variados#update'
  patch '/ligamentos' => 'ligamentos#update'
  resources :fabricantes
  patch '/fabricantes' => 'fabricantes#update'
  resources :cors
  patch '/cors' => 'cors#update'
  resources :padronagem_designs
  patch '/padronagem_designs' => 'padronagem_designs#update'
  resources :tipo_materials
  patch '/tipo_materials' => 'tipo_materials#update'
  resources :faixa_etarias
  patch '/faixa_etarias' => 'faixa_etarias#update'
  resources :uso_tecidos
  patch '/uso_tecidos' => 'uso_tecidos#update'
  resources :tecnica_designs
  patch '/tecnica_designs' => 'tecnica_designs#update'
  resources :acabamentos
  patch '/acabamentos' => 'acabamentos#update'
  resources :texturas
  patch '/texturas' => 'texturas#update'
  resources :colecaos
  patch '/colecaos' => 'colecaos#update'
  resources :materia_primas
  patch '/materia_primas' => 'materia_primas#update'
  resources :tamanhos
  patch '/tamanhos' => 'tamanhos#update'
  resources :fio_titulos
  patch '/fio_titulos' => 'fio_titulos#update'
  resources :home
  root 'home#index'
#devise_scope :user do
#  authenticated :user do
#    root 'home#index', as: :authenticated_root
#  end
#  unauthenticated do
#    root 'devise/sessions#new', as: :unauthenticated_root
#  end
#end

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
