FactoryBot.define do
  factory :item do
    association :user

    item_name          { Faker::Name.name }
    description        { Faker::Lorem.sentence }
    price              { Faker::Number.between(from: 300, to: 9_999_999) }
    category_id        { Faker::Number.between(from: 2, to: 11) }
    condition_id       { Faker::Number.between(from: 2, to: 7) }
    delivery_charge_id { Faker::Number.between(from: 2, to: 3) }
    prefecture_id      { Faker::Number.between(from: 2, to: 47) }
    shipping_day_id    { Faker::Number.between(from: 2, to: 4) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
