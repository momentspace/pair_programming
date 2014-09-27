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

  def select_product(product)
    if !products.include?(product)
      return nil
    end

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

end

