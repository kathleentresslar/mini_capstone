class Api::ProductsController < ApplicationController
  def show_all_products
    @products = Product.all
    render "all_products.json.jb"
  end
end
