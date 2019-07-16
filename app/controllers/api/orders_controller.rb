class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    index = 0
    cart_subtotal = 0
    while index < carted_products.length
      cart_subtotal += carted_products[index].product.price * carted_products[index].quantity
      index += 1
    end

    @order = Order.new(
      user_id: current_user.id,
      subtotal: cart_subtotal,
      tax: cart_subtotal * 0.09,
      total: cart_subtotal * 1.09,
    )
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order_id)

      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }
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
