class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
    )

    if @order.save
      render "show.json.jb"
    else
      render json: { message: "didn't work!" }
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end
end
