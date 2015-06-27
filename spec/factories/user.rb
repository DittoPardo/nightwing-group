FactoryGirl.define do 
  factory(:user) do
    email "example@example.com"
    password "test1234"
    password_confirmation "test1234"
  end
end
