require "http"

system "clear"

puts "Welcome to the Bakery!"

while true
  puts "Choose an option:"
  puts "[1] Show all products"
  puts "[2] Update a product"
  puts "[3] Show just brownie"
  puts "[q] Quit"

  input = gets.chomp
  if input == "1"
    response = HTTP.get("http://localhost:3000/api/all_products")
    products = response.parse
    pp products
  elsif input == "2"
    response = HTTP.get("http://localhost:3000/api/all_products")
    products = response.parse
    pp products
    puts "Give me the id for the product you'd like to update"
    id = gets.chomp.to_i
    response = HTTP.patch("http://localhost:3000/api/products/#{id}")

    while true
      puts "Choose an attribute to update:"
      puts "[1] Update name"
      puts "[2] Update price"
      puts "[3] Update description"
      puts "[q] All done!"

      update_input = gets.chomp
      if update_input == "1"
        puts "Enter the new name for this product"
        new_name = gets.chomp
        product = HTTP.post("http://example.com/resource", :form => { :name => "#{new_name}" })
      elsif update_input == "2"
        puts "Enter the new price for this product"
        new_price = gets.chomp.to_i
      elsif update_input == "3"
        puts "Enter the new description for this product"
        new_description = gets.chomp
      elsif update_input == "q"
        puts "Okay we're updated!"
        pp product
        break
      end
    end
  elsif input == "3"
    response = HTTP.get("http://localhost:3000/api/brownie")
    product = response.parse
    pp product
  elsif input == "q"
    puts "KK biiieeeee"
    break
  else
    puts "Invalid input"
  end
end
