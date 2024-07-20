require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Creating stores in the database
Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Outputting the number of stores to ensure the correct count
puts "Number of stores: #{Store.count}"
