# Create an Admin user
User.create!(
  email: 'admin@test.com',
  password: 'password@1',
  is_admin: true
)

# Create a Normal user
User.create!(
  email: 'user@test.com',
  password: 'password@1',
  is_admin: false
)

10.times do |i|
  Car.create!(make: 'Rails Auto', model: "New Car #{i}", year: "200#{i}")
end
