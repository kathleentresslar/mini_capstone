class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def subtotal
    return product.price.to_i * quantity.to_i
  end

  def tax
    return subtotal * 0.09
  end

  def total
    return subtotal + tax
  end
end
