class VendingMachine
  def initialize
    @stock = 0
    @products = []
    @output = []
  end

  def add_product(product)
    @products << product
  end

  def add_output(product)
    @output << product
  end

  def start
    puts "welcome!"
  end

  def add_money(value)
    @stock += value
  end

  def select_product(name)
    if !@products.map(&:name).include?(name)
      return nil
    end

    product = @products.find {|p| p.name == name}
    if stock < product.value
      return nil
    end

    @stock -= product.value
    add_output(product)
    return product
  end

  def quit
    puts "thank you."
  end

  def hoge(input)
    begin
      money = Integer(input)
      add_money(money)
    rescue
      select_product(input)
    end
  end

  def show_status
    puts "remain money: " + @stock
    puts "output: " + output.map(&:name).join(" ")
  end

end

