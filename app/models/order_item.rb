class OrderItem < ApplicationRecord
  has_many :products
  has_many :orders

  validates :quantity, :presence => true
  validates :product_id, :presence => true
  validates :order_id, :presence => true


end
