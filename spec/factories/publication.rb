FactoryBot.define do
  factory :publication do
    title    { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
    user
  end
end