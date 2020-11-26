FactoryBot.define do
  factory :complete do
    association :user
    association :work
  end
end
