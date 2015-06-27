require 'faker'
user = create(:user)

5.times do |n|
  Project.create!(
    name: Faker::App.name,
    description: Faker::Lorem.paragraphs,
    user: user
  )
end
