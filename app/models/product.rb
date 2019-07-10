class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 5..500, too_long: "500 characters is the maximum allowed", too_short: "Please enter a minimum of 10 characters" }

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categories
  has_many :category_products

  def is_discounted?
    return price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
