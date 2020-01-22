# Join 2 arrays without using inbuilt functions
 x = Array.[](1, 2, 3, 4,5)
 y = Array.[](6,7,8,9,10)
z = Array.new(10)
# z=x.join(y)
# puts x<<y

class Merge
	def initialize(x,y)
		@x = x
		@y = y
	end	
	def fun
		z = @x << @y
		return z
	end	
end

obj = Merge.new(x,y)
puts obj.fun