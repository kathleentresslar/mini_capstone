class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 5..500, too_long: "500 characters is the maximum allowed", too_short: "Please enter a minimum of 10 characters" }

  def is_discounted?
    return price <= 10
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  belongs_to :supplier

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def images
  #   Image.where(product_id: self.id)
  # end
  has_many :images
end
