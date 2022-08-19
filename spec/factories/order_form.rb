FactoryBot.define do
  factory :order_form do
    user_id { Faker::Number.non_zero_digit }
    item_id { Faker::Number.non_zero_digit }
    post_code { '123-4567' }
    prefecture_id { 1 }
    city { '東京都' }
    adress { '1-1' }
    building { '東京ハイツ' }
    phone { 00000000000 }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
  end
end