FactoryBot.define do
  factory :item do
    association :user

    item_name          { Faker::Name.name }
    description        { Faker::Lorem.sentence }
    price              { Faker::Number.between(from: 300, to: 9_999_999) }
    category_id           { Category.all.sample }
    condition_id          { Condition.all.sample }
    delivery_charge_id    { DeliveryCharge.all.sample }
    prefecture_id         { Prefecture.all.sample }
    shipping_day_id       { ShippingDay.all.sample }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
