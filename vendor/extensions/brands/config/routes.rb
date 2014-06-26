Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :brands, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :brands, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
