class Product
  attr_accessor :title, :price, :discount, :discount_price

  def initialize(title, price, discount, discount_price)
    @title = title
    @price = price
    @discount = discount
    @discount_price = discount_price
  end
end

class Offer
  def initialize
    @products = []
  end

  def add_product(title, price, discount, discount_price)
    product = Product.new(title, price, discount, discount_price)
    @products << product
    product
  end

  def all_products
    @products
  end

  def find_product(title)
    @products.find {|product| product.title == title }
  end

  def update_product(title, price, discount, discount_price)
    product = find_product(title)
    product.price = price
    product.discount = discount
    product.discount_price = discount_price
  end

  def remove_product(title)
    product = find_product(title)
    @products.delete(product)
  end
end

offer = Offer.new
product1 = offer.add_product("T-Shirt", 250, "20%", 200)
product2 = offer.add_product("Shirt", 500, "20%", 400)
product3 = offer.add_product("Panjabhi", 1000, "20%", 800)

p "............"
puts offer.all_products.inspect

p "............"

single_product = offer.find_product("Panjabhi")
puts single_product.inspect

p "............"

offer.update_product("Panjabhi", 2500, "20%", 2000)
puts product3.inspect

p "............"
offer.remove_product("T-Shirt")

puts offer.all_products.inspect