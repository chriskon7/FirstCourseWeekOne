=begin
1 Create a local variable and modify it at an inner scope (in between a do/end block). You can try

a) re-assigning the variable to something else-  set local_var to three within the block and it did not change the variable outside of the block
b) call a method that doesn’t mutate the caller-  Used the method uniq inside the block and it did not change the local var on outside of block
c) call a method that mutates the caller-    Used the method pop and uniq! inside block and it did change the variable on outside of block
2 Create a local variable at an inner scope (within a do/end block) and try to reference it in the outer scope.  
	Throws an error because the variable hasn't been declared at local level- `<main>': undefined local variable or method `inner_var' for main:Object (NameError)
What happens when you have nested do/end blocks?	A variable created in a nested do/end block can not be called in the do/end block it is nested in
=end

local_var = ["a", "b", "b", "c", "d", "e"]

def some_method(x)
	x.each do|letter| 
		puts "This is the letter #{letter}!"
		inner_inner_var = "Chris Koning"
	end
	puts inner_inner_var
	p x.uniq!
	inner_var = [1,2,3,4,5]
end

some_method(local_var)

p local_var



