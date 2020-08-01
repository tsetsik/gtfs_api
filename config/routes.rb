Rails.application.routes.draw do
  get 'gtfs/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Ex:- scope :active, -> {where(:active => true)}
  scope :api do
    scope :v1 do
      resources :gtfs, only: :create
      resources :stations, only: :index
    end
  end
end
