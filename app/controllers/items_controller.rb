class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  private

  def item_params
    params.require(:item).permit( :item_name, :description, :category_id, :condition_id, :delivery_charge_id, :prefecture_id, :shipping_day_id, :price).merge(user_id: current_user.id)
  end

end
