require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Assuming the Store model is already defined somewhere, add the association
class Store < ActiveRecord::Base
  has_many :employees
end

# Assuming the Employee model is also defined, add the association
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Creating employees for Store 1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)

# Creating employees for Store 2 (Richmond)
@store2.employees.create(first_name: "Alice", last_name: "Wonderland", hourly_rate: 65)
@store2.employees.create(first_name: "Bob", last_name: "Builder", hourly_rate: 70)
@store2.employees.create(first_name: "Charlie", last_name: "Chocolate", hourly_rate: 60)

# Outputting to confirm creation of employees
puts "Employees at #{@store1.name}:"
@store1.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}"
end

puts "Employees at #{@store2.name}:"
@store2.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}"
end