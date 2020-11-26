FactoryBot.define do
  factory :report do
    text_report     {Faker::Lorem.sentence}
    feeling_score_id    {2}
    association :complete
  end
end
