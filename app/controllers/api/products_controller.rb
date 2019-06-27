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
    @product = Product.find_by(name: params["name"])
    render "show.json.jb"
  end
end
