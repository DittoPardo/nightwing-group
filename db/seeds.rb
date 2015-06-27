user = User.create(
  email: 'test@test.com',
  password: 'q1w2e3r4',
  password_confirmation: 'q1w2e3r4',
  name: 'John Doe'
)

5.times do |n|
  Project.create(
    name: "Test project #{n+1}",
    description: 'Long long long description',
    owner: user
  )
end
