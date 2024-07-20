require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store from the database and assign it to @store3
@store3 = Store.find(3)

# Use ActiveRecord's destroy method to delete the store from the database
@store3.destroy

# Output the count of stores to verify the store has been deleted
puts "Number of stores after deletion: #{Store.count}"