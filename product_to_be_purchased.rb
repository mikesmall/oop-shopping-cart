# Each product has a name, base price, and tax rate.

# There should also be a method to calculate and
# return the product's total price based on the
# base price and tax rate.

class Product

  attr_accessor :name, :price
  attr_reader :tax

  @@tax = 0.13 # that's 13%

  def initialize (name, price)
    @name = name
    @price = price
  end#initialize

  def total
    total_price = (@price * @@tax) + @price
    return total_price
  end#total

end#Product

# -- Test outputs --
# tamagotchi = Product.new("Tamagotchi", 1299.99)
# puts tamagotchi.total
