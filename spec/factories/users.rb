FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {"0a1b2c3d"}
    password_confirmation {password}
    birthday              {Faker::Date.between(from: '1930-01-01', to: '2014-12-31')}
  end
end