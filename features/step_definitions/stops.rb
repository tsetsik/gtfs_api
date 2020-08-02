Then('I will see all the stops') do
  responseIds = JSON.parse(last_response.body).map { |r| r['id'] }
  expect(Stop.pluck(:id)).to eq responseIds
end


Then('I will see {int} stops') do |int|
  expect(JSON.parse(last_response.body).length).to eq int
end