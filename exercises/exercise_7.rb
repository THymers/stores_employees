require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Add validations to the Employee model
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

# Add validations to the Store model
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel

  private

  def must_carry_apparel
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:base, "Store must carry at least one of the men's or women's apparel")
    end
  end
end

# Ask the user for a store name
puts "Please enter a store name:"
store_name = gets.chomp

# Attempt to create a store with the inputted name
new_store = Store.new(name: store_name)

if new_store.save
  puts "New store created successfully."
else
  puts "Error: Could not create store. See below for details:"
  new_store.errors.full_messages.each { |message| puts message }
end