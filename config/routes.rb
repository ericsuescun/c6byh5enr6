Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
        resources :products, :only => [:index, :create, :update, :destroy]
        # resources :users, :only => [:show, :create, :update, :destroy]
      end
  end
  resources :products
end
