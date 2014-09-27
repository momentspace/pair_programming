class Product
  def initialize(name, value)
    @name = name
    @value = value
  end

  def to_s
    return name + ", " + value
  end
end

