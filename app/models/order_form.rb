class OderForm
  include ActiveModel::Model

  attr_accessor :user_id, :item_id, :post_code, :prefecture_id, :city, :adress, :building, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :adress
    validates :phone, format: { with: /\A[0-9]{11}\z/, message: 'is invalid' }
    validates :token
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    
    Adress.create(order_id: order.id, post_code: post_code, prefecture_id: prefecture_id, city: city, adress: adress, building: building, phone: phone)
  end

end