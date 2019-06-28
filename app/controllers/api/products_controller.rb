class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show_brownie
    @brownie = Product.find_by(name: "brownie")
    render "show_brownie.json.jb"
  end

  def show_cheesecake
    @cheesecake = Product.find_by(name: "cheesecake")
    render "show_cheesecake.json.jb"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    @product.save

    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy

    render json: { message: "Product successfully destroyed! buh bye" }
  end
end
