class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 5..500, too_long: "500 characters is the maximum allowed", too_short: "Please enter a minimum of 10 characters" }

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  def is_discounted?
    return price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def image_url
    if images.length > 0 && images[0].url
      images[0].url
  else
    "https://www.hutchinsontires.com/helpers/img/no_image.jpg"
    end
  end
end
