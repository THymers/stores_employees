require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store by its ID and assign it to @store1
@store1 = Store.find(1)

# Load the second store from the database and assign it to @store2
@store2 = Store.find(2)

# Update the first store (@store1) - change its name or another attribute
@store1.name = "Burnaby Central"
@store1.save

# Alternatively, use update method directly
@store1.update(name: "Burnaby Central")

# Output the updated name to confirm
puts "Updated Store 1 Name: #{@store1.name}"