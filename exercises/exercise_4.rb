require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Creating additional stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each of the men's apparel stores and output their name and annual revenue
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have annual revenue less than $1M
@womens_stores_under_1m = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Loop through each of the qualifying women's apparel stores and output their name and annual revenue
puts "Women's Apparel Stores with Revenue Under $1M:"
@womens_stores_under_1m.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end