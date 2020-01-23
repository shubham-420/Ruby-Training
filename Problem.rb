class Sales_Tax_Problem

  def calucate_tax(tax, price)
    total_amount = tax/100.to_f
    @salestax = @salestax.to_f + ( price.to_f * total_amount )
    ( ( price.to_f * total_amount ) + price )
  end

  def total_tax(tax, price)
    tax = tax.to_f + 10.00
    total_amount = tax/100.to_f
    @salestax = @salestax.to_f+ ( price.to_f * total_amount.to_f )
    ( price.to_f * total_amount.to_f ) + price.to_f
  end

  def item_exempted(input)
    flag = false
    ["book","chocolate","pills"].each do |element|
    if input.include?(element)
      flag=true
    end

    flag
  end

  def item_imported?(input)
    input.include?("imported")
  end

  def display(sentence, total_cost)
    puts " output is: "
    
    for index in (0..2)
      puts "#{sentence[index]} : #{total_cost[index]}"
    end

    sum = total_cost.sum.to_f
    sum = sum.round(2)
    @salestax = @salestax.round(2)
    
    puts "Sales taxes : #{@salestax}"
    puts "Total #{sum}"
  end

  def tax_calculator 
    tax, sentence, @salestax, total_cost  = 0.00, [], 0.00,  []

    for iterate in (0..3) 
      input = gets.chomp
      output = input.split("at")
      price = output[1].to_f
      sentence[iterate] = output[0]

      tax = item_imported(input) ? 5.00 : 0.00

      if item_exempted(input)
        after_tax_cost=calucate_tax(tax, price)
      else
        after_tax_cost=total_tax(tax, price)
      end

      total_cost[iterate] = after_tax_cost
    end

    display(sentence, total_cost)

  end

end

run = Sales_Tax_Problem.new
run.tax_calculator
