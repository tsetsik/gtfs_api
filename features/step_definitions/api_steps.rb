When('I upload that gtfs file') do
  post '/api/v1/gtfs', fileUrl: @fileUrl
end

When('I fetch all stops') do
  get '/api/v1/stops'
end

When('I filter by {float} and {float} and {int}') do |latitude, longitude, range|
  get '/api/v1/stops', latitude: latitude, longitude: longitude, range: range
end