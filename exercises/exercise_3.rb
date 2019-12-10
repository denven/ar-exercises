require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`) the `count` (as you did in Exercise 1.)

# Your code goes here ...

@store3 = Store.third()
@store3.destroy

@store3 = Store.find_by(id: '3')
if(!@store3) 
  puts "The third store is deleted from database."
end
puts "Number of stores is #{Store.count}."
