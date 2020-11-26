FactoryBot.define do
  factory :work do
    title                 {Faker::Name.name}        
    text_content          {Faker::Lorem.sentence}
    price                 {2222}
    need_time             {0.5}      
    start_time            {"2020-11-23 15:30:00"}
    association :user
    association :home
  end
end
