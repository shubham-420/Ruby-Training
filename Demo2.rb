# Join 2 arrays without using inbuilt functions

x = [1,2,3,4,5]
y = [10,20,30,40,50]
 
class Merge
	def fun(x,y)
	z = x + y
	return z
	end	
end

obj = Merge.new
puts obj.fun(x,y)