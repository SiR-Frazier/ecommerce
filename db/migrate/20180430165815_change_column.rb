class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :quanity, :integer
    add_column :order_items, :quantity, :integer
  end
end
