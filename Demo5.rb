require 'csv'


class Csv
	def fun
		CSV.open("OP_CSV.csv", "wb") do |csv|  
			CSV.foreach("IN_CSV.csv") do |row|
			c1 = row[0].to_i
			c2 = row[1].to_i
			sum = c1 * c2
			csv << [c1,c2,sum]  
			end
		end 
	end
end	
	
obj=Csv.new
obj.fun
		