class OrdersController < ApplicationController

  def index
    @order_form = OrderForm.new
  end

  def create
    @order_form = OrderForm.new(order_params)
    if @order_form.valid?
      @order_form.save
      return redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_form).permit(:post_code, :prefecture_id, :city, :adress, :building, :phone).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end

end
