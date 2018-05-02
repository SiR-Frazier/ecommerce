class AddProductColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :author, :string
    add_column :products, :genre, :string
    add_column :products, :description, :text
  end
end
