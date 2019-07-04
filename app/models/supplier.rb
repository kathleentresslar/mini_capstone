class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  def products
    Product.where(supplier_id: self.id)
  end
end
