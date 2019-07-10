class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
    )

    @order.save
    render "show.json.jb"
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
