# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    subject { Faker::Lorem.characters(rand(4..30)) }
    message { Faker::Lorem.paragraph }
    status 1

    association :sended, factory: :user
    association :accepted, factory: :user
  end
end
