class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :products

  # def products
  #   Product.where(supplier_id: self.id)
  # end
end
