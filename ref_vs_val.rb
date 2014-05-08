=begin
Create a method that takes an array as a parameter. Within that method, try calling methods that do not mutate the caller. 
How does that affect the array outside of the method? What about when you call a method that mutates the caller within the method?
				When using the flatten method I found out when not mutating the caller it does not change the actual variable outside of the block.
				When using a method that does mutate the caller it does change the actual variable outside of the block.
=end

array = [1,[2,3],4,[5,6,7],8]

def array_method(arr)
	p arr.flatten!
end
array_method(array)
p array






