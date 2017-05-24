require_relative 'product_to_be_purchased.rb'

# Each shopping cart has a collection of products.
@products_in_cart = []

# add a product to the cart
def add_product(name, price)
  new_product = Product.new(name, price)
  @products_in_cart << new_product
  new_product
end#add_product

# remove a product from the cart
def remove_product(name)
  @products_in_cart.delete(Product)
end#remove_product

# add up the total cost of all products in the cart before tax
def cumulative_total_before_tax
  amount = 0.0
  @products_in_cart.each do |product|
    amount += product.price
  end#each
  return amount
end#cumulative_total_before_tax

# add up the total cost of all products in the cart after tax
def cumulative_total_after_tax
  amount = 0.0
  @products_in_cart.each do |product|
    amount += product.total
  end#each
  return amount
end#cumulative_total_after_tax

def products_in_cart
  return @products_in_cart
end#products_in_cart

# --- Test outputs ---

add_product("Evil Dead VHS", 4.99)
add_product("Spinal Tap DVD", 5.99)
add_product("C3PO pillowcase", 587.49)
add_product("litter box", 32.00)

puts products_in_cart.inspect

puts "Total before tax: $#{cumulative_total_before_tax}"

puts "Total after tax: $#{cumulative_total_after_tax}"
