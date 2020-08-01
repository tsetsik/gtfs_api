Given('I have valid gtfs file') do
  @fileUrl = File.expand_path('./spec/fixtures/valid_gtfs.zip')
end

When('I upload that gtfs file') do
  post '/api/v1/gtfs', fileUrl: @fileUrl
end

Then('I get {int} response') do |status|
  expect(last_response.status).to eq status
end