class Product
  attr_accessor :title, :price, :discount

  def initialize(title, price, discount)
    @title = title
    @price = price
    @discount = discount
  end

  def after_discount_price
    discount_percent = @discount.delete('%').to_f / 100.0
    discount_price = @price - (@price * discount_percent)
  end
end

class Offer
  def initialize
    @products = []
  end

  def add_product(title, price, discount)
    product = Product.new(title, price, discount)
    @products << product
    product
  end

  def all_products
    @products.map do |product|
      {
        title: product.title,
        price: product.price,
        discount: "#{(product.discount * 100).to_i}%",
        discount_price: product.after_discount_price
      }
    end
  end

  def find_product(title)
    @products.find {|product| product.title == title }
  end

  def update_product(title, price, discount)
    product = find_product(title)
    product.price = price
    product.discount = discount
  end

  def remove_product(title)
    product = find_product(title)
    @products.delete(product)
  end
end

offer = Offer.new
product1 = offer.add_product("T-Shirt", 250, "10%")
product2 = offer.add_product("Shirt", 500, "20%")
product3 = offer.add_product("Panjabhi", 1000, "20%")

p "............"
puts offer.all_products.inspect

puts "All products with discounted prices:"
offer.all_products.each do |product|
  puts "Title: #{product[:title]},
        Price: #{product[:price]},
        Discount: #{product[:discount]},
        Discounted Price: #{product[:discount_price]}"
end

puts "Print the single product from Title"

single_product = offer.find_product("Panjabhi")
puts "Title: #{single_product.title},
      Price: #{single_product.price},
      Discount: #{single_product.discount},
      Discounted Price: #{single_product.after_discount_price}"

p "............"

offer.update_product("Panjabhi", 2500, "20%")
puts product3.inspect

p "............"
offer.remove_product("T-Shirt")

puts offer.all_products.inspect
