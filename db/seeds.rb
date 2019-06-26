# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "brownie", price: 2, image_url: "https://www.joyofbaking.com/images/facebook/brownies.jpg", description: "freshly baked, chocolately and fudgey")
Product.create(name: "cheesecake", price: 12, image_url: "https://www.jocooks.com/wp-content/uploads/2018/11/new-york-style-cheesecake-1-2.jpg", description: "graham cracker crust with a raspberry topping")
Product.create(name: "macaroon", price: 4, image_url: "https://compote.slate.com/images/30d3dc31-1740-433d-87a0-1d83dffa07b8.jpg", description: "crisp outer shell with a gooey inside")
