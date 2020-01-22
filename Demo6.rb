x = [1,'a',2,'a',3,3,3,'x',3,'z']
y = Array.new
# puts x
# y=x.map { |n| n * 2 if n.to_i>'a'.to_i }
class Double
	def initialize(x)
		@x = x
	end

	def count
		y = @x.map { |n|   x = n.to_i > 'a'.to_i  ?  n*2 : n }
		y
	end	
end

obj = Double.new(x)
puts obj.count