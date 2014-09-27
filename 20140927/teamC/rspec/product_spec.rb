require_relative '../product'


describe Product, "#initialize" do
  it "raises error with no argument" do
    expect{Product.new}.to(raise_error(ArgumentError))
  end

  it "initialize a product with name and value" do
    p = Product.new 'coke', 150
    expect(p.name).to(eq('coke'))
    expect(p.value).to(eq(150))
  end

end
