FactoryBot.define do
  factory :task do
    text  {Faker::Lorem.sentence}
    memo  {Faker::Lorem.sentence}
    limit {Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}
    list_id {1}
    association :user
  end
end
