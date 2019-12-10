require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales.
#  **Hint:** Chain together `where` and `size` (or `count`) Active Record methods

# Your code goes here ...

@total_revenue = Store.sum('annual_revenue')
puts "Total company revenue: #{@total_revenue}"

@average_revenue = Store.average('annual_revenue')
puts "Average revenue of store: #{@average_revenue}"

Store.where("annual_revenue >= '1000000'")
     .each do |store|
      puts "Profitable store: #{store.name}'s annual revenue is #{store.annual_revenue}"
     end