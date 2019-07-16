class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  # def subtotal
  #   return product.price.to_i * quantity.to_i
  # end

  # def tax
  #   return subtotal * 0.09
  # end

  # def total
  #   return subtotal + tax
  # end
end
