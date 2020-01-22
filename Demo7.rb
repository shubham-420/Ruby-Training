arr = [1,2,3,4,5,2,3,2,2,1]

# puts mp
class Frequency
	def initialize(x)
		@x = x
	end
	def count
		@mp = Hash.new(0)
		@x.each{|h|  @mp[h] = @mp[h]+1 }
		return @mp
	end
end

obj=Frequency.new(arr)
puts obj.count