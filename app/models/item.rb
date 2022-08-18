class Item < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :item_name
    validates :description
    validates :category_id
    validates :condition_id
    validates :delivery_charge_id
    validates :prefecture_id
    validates :shipping_day_id
    validates :price
    validates :user_id
  end

end
