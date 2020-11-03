FactoryBot.define do
  factory :device do |f|
    f.name { Faker::Device.model_name}
    f.category { create(:category) }
  end
end
