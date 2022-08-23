FactoryBot.define do
  factory :item do
    association :user

    item_name          { Faker::Name.name }
    description        { Faker::Lorem.sentence }
    price              { '3000' }
    category_id        { 2 }
    condition_id       { 2 }
    delivery_charge_id { 2 }
    prefecture_id      { 2 }
    shipping_day_id    { 2 }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
