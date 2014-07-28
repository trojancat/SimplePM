# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meeting do
    title { Faker::Lorem.characters(rand(4..30)) }
    status 1
    started_at Date.new

    association :project, factory: :project
    association :owned, factory: :user
  end
end
