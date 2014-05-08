# Quiz: Lesson 1

# Some exercises from lesson 1 materials:

# 1. What is the value of a after the below code is executed?


#   a = 1
#   b = a
#   b = 3

"a will still be equal to 1.  b becomes equal to the value 1 and then when b is set equal to 3, only b is affected"

# 2. What's the difference between an Array and a Hash?

"A hash contains a key and value pair.  This can be a key of :name and a value of "Chris". An array contains values.
Those values can be an array or a hash.  A hash can also contain arrays."

# 3. Every Ruby expression returns a value. Say what value is returned in the below expressions:

# arr = [1, 2, 3, 3]  
"This will return: [1,2,3,3]"
# [1, 2, 3, 3].uniq
"This will return: [1,2,3] but it would not mutate the caller.  If this was set to a variable a, a would still equal: [1,2,3,3]"
# [1, 2, 3, 3].uniq!
"This will return: [1,2,3] and it would also mutate the caller because of the bang or !"

# 4. What's the difference between the map and select methods for the Array class? Give an example of when you'd use one versus the other.

"map is used to return a new array containing values that are affected by what you have in your block.  If you had an array:  a = [1,2,3] and you 
wanted each item in that
array to be multiplied by two, you would use map and a block to multiply each item by two.  a.map { |x| x * 2} would return [2,4,6].  You would use ! to 
mutate the caller.
select will also return a new array but it returns those values that evaluate to true based on the block given.  If you had an array:
a = [1,2,3,4,5,6,7,8,9,10] and just wanted the values greater than or equal to 7 in the array you would use select.
a.select { |x| x >= 7} would return [7,8,9,10].  Like map, select does not mutate the caller unless you use!."

# 5. Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?

"hash_strings = {'name' => 'chris', 'sex' => 'male', 'hair' => 'brown'}"

# 6. What is returned?


#   x = 1

#   x.odd? ? "no way!" : "yes, sir!"

"This would return 'no way' because the expression evaluates to true.  If true: left side is returned, if false: right side is returned"

# 7. What is x?


#   x = 1

#   3.times do
#     x += 1
#   end

#   puts x

"x in this case will be 4 because x is initially created outside of the block"

# 8. What is x?


#   3.times do
#     x += 1
#   end

#   puts x

"This will throw an error because x has not been defined outside of the block"
