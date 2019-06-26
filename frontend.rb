require "http"

system "clear"

puts "Welcome to the Bakery!"

while true
  puts "Choose an option:"
  puts "[1] Show all products"
  puts "[2] Show just cheesecake"
  puts "[3] Show just brownie"
  puts "[q] Quit"

  input = gets.chomp
  if input == "1"
    response = HTTP.get("http://localhost:3000/api/all_products")
    products = response.parse
    pp products
  elsif input == "2"
    response = HTTP.get("http://localhost:3000/api/cheesecake")
    product = response.parse
    pp product
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
