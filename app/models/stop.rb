class Stop < ApplicationRecord
  geocoded_by :desc, latitude: :lat, longitude: :lon
end
