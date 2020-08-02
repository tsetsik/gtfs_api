Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Ex:- scope :active, -> {where(:active => true)}
  namespace :api do
    namespace :v1 do
      resources :gtfs, only: :create
      resources :stops, only: :index
    end
  end
end
