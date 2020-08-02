Given('I have valid gtfs file') do
  @fileUrl = File.expand_path('./spec/fixtures/valid_gtfs.zip')
end

Given('I have zip file with missing files') do
  @fileUrl = File.expand_path('./spec/fixtures/missing_files.zip')
end

Given('I have several stops loaded already') do
  step 'I have valid gtfs file'
  step 'I upload that gtfs file'
end

Then('I get {int} response') do |status|
  expect(last_response.status).to eq status
end