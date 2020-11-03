FactoryBot.define do
  factory :category do |f|
    f.name { Faker::Company.name }
  end
end
