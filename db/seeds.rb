puts "Clearing existing data..."
CartItem.delete_all
OrderItem.delete_all
Order.delete_all
Cart.delete_all
Stock.delete_all
Product.delete_all
Category.delete_all
User.where.not(role: :admin).delete_all

puts "Creating admin user..."
User.find_or_create_by!(email: "admin@oppedle.com") do |user|
  user.password = "password123"
  user.password_confirmation = "password123"
  user.role = :admin
end

puts "Creating buyer user..."
User.find_or_create_by!(email: "buyer@oppedle.com") do |user|
  user.password = "password123"
  user.password_confirmation = "password123"
  user.role = :buyer
end

puts "Creating categories..."
categories = [
  { name: "Laptops", description: "High-performance laptops for work and gaming", image_url: "https://via.placeholder.com/300/1abc9c/fff?text=Laptops" },
  { name: "Smartphones", description: "Latest smartphones with cutting-edge features", image_url: "https://via.placeholder.com/300/3498db/fff?text=Smartphones" },
  { name: "Headphones", description: "Premium audio headphones and earbuds", image_url: "https://via.placeholder.com/300/e74c3c/fff?text=Headphones" },
  { name: "Accessories", description: "Tech accessories and peripherals", image_url: "https://via.placeholder.com/300/f39c12/fff?text=Accessories" },
  { name: "Tablets", description: "Tablets for entertainment and productivity", image_url: "https://via.placeholder.com/300/9b59b6/fff?text=Tablets" }
]

created_categories = categories.map do |attrs|
  Category.create!(attrs)
end

puts "Creating products..."
products_data = [
  { name: "MacBook Pro 16\"", description: "Apple M3 Pro chip, 18GB RAM, 512GB SSD", price: 2499, category: created_categories[0], active: true, image_url: "https://via.placeholder.com/400/555555/fff?text=MacBook+Pro" },
  { name: "Dell XPS 15", description: "Intel Core i7, 16GB RAM, 512GB SSD, OLED display", price: 1799, category: created_categories[0], active: true, image_url: "https://via.placeholder.com/400/444444/fff?text=Dell+XPS" },
  { name: "ThinkPad X1 Carbon", description: "Intel Core i7, 16GB RAM, 1TB SSD, business laptop", price: 1649, category: created_categories[0], active: true, image_url: "https://via.placeholder.com/400/333333/fff?text=ThinkPad+X1" },
  { name: "iPhone 15 Pro", description: "A17 Pro chip, 256GB, titanium design", price: 1199, category: created_categories[1], active: true, image_url: "https://via.placeholder.com/400/000000/fff?text=iPhone+15+Pro" },
  { name: "Samsung Galaxy S24 Ultra", description: "Snapdragon 8 Gen 3, 256GB, S Pen included", price: 1299, category: created_categories[1], active: true, image_url: "https://via.placeholder.com/400/1a1a2e/fff?text=Galaxy+S24+Ultra" },
  { name: "Google Pixel 8 Pro", description: "Tensor G3, 128GB, AI-powered camera", price: 999, category: created_categories[1], active: true, image_url: "https://via.placeholder.com/400/4caf50/fff?text=Pixel+8+Pro" },
  { name: "Sony WH-1000XM5", description: "Industry-leading noise cancelling, 30hr battery", price: 349, category: created_categories[2], active: true, image_url: "https://via.placeholder.com/400/333333/fff?text=Sony+XM5" },
  { name: "AirPods Pro 2", description: "Active noise cancellation, USB-C, adaptive audio", price: 249, category: created_categories[2], active: true, image_url: "https://via.placeholder.com/400/ffffff/000?text=AirPods+Pro+2" },
  { name: "Bose QuietComfort Ultra", description: "Immersive audio, world-class noise cancellation", price: 429, category: created_categories[2], active: true, image_url: "https://via.placeholder.com/400/111111/fff?text=Bose+QC+Ultra" },
  { name: "Logitech MX Master 3S", description: "Wireless ergonomic mouse, 8K DPI sensor", price: 99, category: created_categories[3], active: true, image_url: "https://via.placeholder.com/400/2c3e50/fff?text=MX+Master+3S" },
  { name: "Keychron Q1 Pro", description: "Wireless mechanical keyboard, hot-swappable", price: 199, category: created_categories[3], active: true, image_url: "https://via.placeholder.com/400/34495e/fff?text=Keychron+Q1" },
  { name: "Samsung T7 SSD 1TB", description: "Portable SSD, 1050MB/s read speed", price: 109, category: created_categories[3], active: true, image_url: "https://via.placeholder.com/400/1abc9c/fff?text=Samsung+T7" },
  { name: "iPad Pro 12.9\"", description: "M2 chip, 256GB, Liquid Retina XDR display", price: 1099, category: created_categories[4], active: true, image_url: "https://via.placeholder.com/400/c0c0c0/000?text=iPad+Pro" },
  { name: "Samsung Galaxy Tab S9", description: "Snapdragon 8 Gen 2, 128GB, S Pen included", price: 799, category: created_categories[4], active: true, image_url: "https://via.placeholder.com/400/1a1a2e/fff?text=Galaxy+Tab+S9" }
]

products_data.each do |attrs|
  Product.create!(attrs)
end

puts "Creating stocks..."
Product.find_each do |product|
  sizes = product.category.name == "Laptops" ? [ "14 inch", "15 inch", "16 inch" ] :
          product.category.name == "Smartphones" ? [ "128GB", "256GB", "512GB" ] :
          product.category.name == "Tablets" ? [ "64GB", "128GB", "256GB" ] :
          [ "One Size" ]

  sizes.each do |size|
    Stock.create!(
      product: product,
      amount: rand(5..50),
      size: size
    )
  end
end

puts "Seed complete!"
puts "  Categories: #{Category.count}"
puts "  Products: #{Product.count}"
puts "  Stocks: #{Stock.count}"
