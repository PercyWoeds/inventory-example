FactoryGirl.define do
  factory :unit do
    sequence :inv_id

    unit_type { Faker::Hacker.noun }
    name { Faker::Lorem.sentence }
    description { Faker::Hacker.say_something_smart }

    on_depot false
    out_of_order false
    out_of_order_note ''

    user
    location
  end
end
