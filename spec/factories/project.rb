FactoryGirl.define do 
  factory(:project) do
    name "Pierwszy projekt"
    description { Faker::Lorem.paragraph(2) }


    factory :invalid_project do
      name nil
    end
  end
end
