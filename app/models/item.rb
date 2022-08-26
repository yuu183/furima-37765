class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_charge
  belongs_to :prefecture
  belongs_to :shipping_day

  has_one_attached :image

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
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :prefecture_id
    validates :condition_id
    validates :delivery_charge_id
    validates :shipping_day_id
  end

  validates :price, numericality: { only_integer: true }, inclusion: { in: (300..9_999_999), message: 'Out of setting range' }
end


