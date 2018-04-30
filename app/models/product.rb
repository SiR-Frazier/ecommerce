class Product < ApplicationRecord
  belongs_to :order_item
  validates :price, :presence => true
  validates :name, :presence => true

end
