class StopSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :zone_id, :url, :timezone, :wheelchair_boarding
  attribute :lat, key: :latitude
  attribute :lon, key: :longitude
end
