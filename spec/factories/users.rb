FactoryBot.define do
  factory :user do
    nickname {Faker::Name.initials(number: 3)}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name {Faker::Name.initials(number: 4)}
    first_name {Faker::Name.initials(number: 4)}
  end
end