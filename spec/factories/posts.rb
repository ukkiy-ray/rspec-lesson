FactoryBot.define do
  factory :post do
    title             {Faker::Lorem.word}
    description       {Faker::Lorem.sentence}
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open(Rails.root.join('spec', 'factories', 'images', 'test.png')), filename: 'test.png', content_type: 'image/png')
    end
  end
end
