require_relative('./product.rb')
require_relative('./vending_machine.rb')

def main
  coke = Product.new('coke', 160)
  tea = Product.new('tea', 100)
  vending_machine = VendingMachine.new
  vending_machine.add_product(coke)
  vending_machine.add_product(tea)

  vending_machine.start
  while true
    input = gets.chomp
    case input
    when '0'
      vending_machine.quit
      break
    else
      vending_machine.hoge input
    end
    vending_machine.show_status
  end

end


