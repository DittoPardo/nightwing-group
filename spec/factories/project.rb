FactoryGirl.define do 
  factory(:project) do
    name "Pierwszy projekt"
    description { Faker::Lorem.paragraph(2) }
  end
end
