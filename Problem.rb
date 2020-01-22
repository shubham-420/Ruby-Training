class Problem
	def fun 
			sl=0
			tax=0.00
			k=0
			sentence=[]
			sltax=0.00
			ss=0
			arr=[]
			for i in (0..2)	
				p=0.00
				st=0
				temp=0
				s=gets.chomp
				temp1=s[0..-9]
				word=s.split
				n=word.length
				price=word[n-1]
				imp=0

				sentence[ss]=temp1
				ss=ss+1
				word.each{|n| st=1  if n == "book" || n == "chocolate" || n == "pills" }
				word.each{|n| imp=1  if n == "imported" }
				if imp == 1
					tax=5.00	
				else
					tax=0.00
				end

				if st==1
					var = tax/100.to_f
					sltax = sltax.to_f+( word[n-1].to_f * var.to_f ).to_f
					t = ( ( word[n-1].to_f * var.to_f ) + word[n-1].to_f )
					# t = word[n-1].to_f
				else
					tax=tax.to_f+10.00
					var = tax/100.to_f
					sltax=sltax.to_f+ ( word[n-1].to_f * var.to_f ).to_f
					t = ( ( word[n-1].to_f * var.to_f ) + word[n-1].to_f )
					 

					# t = (word[n-1].to_f * st.to_f) + word[n-1].to_f
					
				end
				arr[k]=t
				k=k+1
			end

		
			puts "#{sentence[0]} : #{arr[0]}"
			puts "#{sentence[1]} : #{ arr[1]}"
			puts "#{sentence[2]} : #{arr[2]}" 
			d=0.00
		  d=arr.sum.to_f
      d=d.round(2)
		  sltax=sltax.round(2) 
	  	puts "Sales taxes : #{sltax}"
		  puts "Total #{d}"

	end
end

obj=Problem.new 
obj.fun

