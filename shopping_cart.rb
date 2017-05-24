require_relative 'product_to_be_purchased.rb'

# Each shopping cart has a collection of products.

@@products_in_cart = []

# It should also have the following functionality:

#   - add a product to the cart

def add_product(name, price)
  new_product = Product.new(name, price)
  @@products_in_cart << Product
  new_product
end#add_product

#   - remove a product from the cart

def remove_product(name)
  @@products_in_cart.delete(Product)
end#remove_product

#   - add up the total cost of all products in the cart before tax




#   - add up the total cost of all products in the cart after tax
