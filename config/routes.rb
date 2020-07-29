Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Ex:- scope :active, -> {where(:active => true)}
  mount GtfsEngine::Engine, at: '/gtfs'
end
