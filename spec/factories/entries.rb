FactoryBot.define do
  Faker::Config.locale = :en
  factory :entry do
    time { "#{Faker::Number.between(from: 1, to: 8)}h #{Faker::Number.between(from: 0, to: 59)}m"}
    comment { Faker::Lorem.paragraph }
    task { create :task }
  end
end