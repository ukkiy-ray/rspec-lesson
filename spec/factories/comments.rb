FactoryBot.define do
  factory :comment do
    content {Faker::Lorem.word}
    association :user
    association :post
  end
end
