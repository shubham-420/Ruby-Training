$LOAD_PATH << '.'

require 'item_type'
require 'Get_input_from_user'
require 'InputStatus'
# my main class
class SalesTaxProblem
  # frozen_string_literal: true
  include ItemType
  include GetInput
  include InputValidation

  def initialize
    @salestax = 0.00
    @total_cost = []
    @tax = 0.00
  end

  def calucate_tax(price)
    total_amount = @tax / 100.to_f
    @salestax = @salestax.to_f + (price.to_f * total_amount)
    (price.to_f * total_amount) + price
  end

  def total_tax(price)
    @tax = tax.to_f + 10.00
    total_amount = @tax / 100.to_f
    @salestax = @salestax.to_f + (price.to_f * total_amount.to_f)
    (price.to_f * total_amount.to_f) + price.to_f
  end

  def item_imported?(input)
    input.include?('imported')
  end

  def display(sentence)
    if @iterate - 1 == -1
      puts 'NIL'
    else
      puts 'output is:'
      (0..iterate).each do |index|
        puts "#{sentence[index]} : #{@total_cost[index]}"
      end
      sum = @total_cost.sum.to_f
      sum = sum.round(2)
      @salestax = @salestax.round(2)

      puts "Sales taxes : #{@salestax}"
      puts "Total #{sum}"
    end
  end

  def calculatetax(price, input)
    if ItemType.item_exempted(input)
      calucate_tax(price)
    else
      total_tax(price)
    end
  end

  def calculate
    sentence = []
    @iterate = 0

    loop do
      puts '1. continue 2. Exit'
      check = gets.to_i

      if check == 1
        puts 'Enter Details'
        input, output = GetInput.get
        checkstatus = InputValidation.check_input(input, output)

        if checkstatus
          price = output[1].to_f
          sentence[@iterate] = output[0]
          @tax = item_imported?(input) ? 5.00 : 0.00
          @total_cost[@iterate] = calculatetax(price, input)
          @iterate += 1
        else
          puts 'Enter Again'
        end
      elsif check == 2
        display(sentence)
        break
      else
        puts 'Enter Crrect Choice'
      end
    end
  end
end

run = SalesTaxProblem.new
run.calculate
