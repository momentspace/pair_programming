class Product
  attr_accessor :name
  attr_accessor :value

  # @param name 商品名
  # @param value 金額
  def initialize(name, value)
    @name = name
    @value = value
  end

  def to_s
    return name + ", " + value
  end
end
