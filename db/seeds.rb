Product.destroy_all
OrderItem.destroy_all

50.times do |index|
  Product.create!(name: Faker::Book.title,
                        price: Faker::Number.decimal(2))
                        @product_id = Product.last.id
end

# 50.times do |index|
#   OrderItem.create!(quantity: Faker::Number.number(1))
# end

p "Created #{Product.count} books"
# p "Created #{OrderItem.count} quantities"
