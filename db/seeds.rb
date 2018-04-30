Product.destroy_all
OrderItem.destroy_all

50.times do |index|
  Product.create!(name: Faker::Vehicle.manufacture,
                        price: Faker::Number.decimal(2))
end

# 50.times do |index|
#   OrderItem.create!(quantity: Faker::Number.number(1))
# end

p "Created #{Product.count} vehicles"
# p "Created #{OrderItem.count} quantities"
