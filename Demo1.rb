class Print
  def fun
    for i in 1..100
      if i%10 == 0 
        print " #{i}"
        puts         
      else
        print " #{i}"
      end  
    end
  end 
end 
    
obj=Print.new
obj.fun
