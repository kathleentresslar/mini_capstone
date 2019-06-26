class Api::ProductsController < ApplicationController
  def show_all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def show_brownie
    @brownie = Product.find_by(name: "brownie")
    render "show_brownie.json.jb"
  end

  def show_cheesecake
    @cheesecake = Product.find_by(name: "cheesecake")
    render "show_cheesecake.json.jb"
  end

  def show_product
    @product = params["product_variable"]
    @product = Product.find_by(name: @product)
    render "product.json.jb"
  end
end
