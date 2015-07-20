FactoryGirl.define do
  factory :post do
    user
    caption Faker::Name.title
  end
end
