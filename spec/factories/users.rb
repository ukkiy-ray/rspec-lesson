FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {'test01test01'}
    password_confirmation {password}
    birthday              {Faker::Date.between(from: '1930-01-01', to: '2014-12-31')}
  end
end