Rails.application.routes.draw do

  mount Spree::Core::Engine, :at => '/'

  Spree::Core::Engine.routes.draw do
    namespace :api do
      namespace :ams do
        resource :home, controller: :home, only: :show
      end
    end
  end

end
