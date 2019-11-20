FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    phone_number { Faker::PhoneNumber.cell_phone }
    collab { Faker::Boolean.boolean }
    leader { Faker::Boolean.boolean }
    password_confirmation { Faker::Subscription.status }
  end
end