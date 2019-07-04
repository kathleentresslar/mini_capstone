# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Brownie", price: 2, description: "freshly baked, chocolately and fudgey", supplier_id: 1)
Product.create(name: "Raspberry cheesecake", price: 12, description: "graham cracker crust with a raspberry topping", supplier_id: 2)
Product.create(name: "macaroon", price: 4, description: "crisp outer shell with a gooey inside", supplier_id: 2)
Product.create(name: "Key lime pie", price: 14, description: "Over 50 limes were squeezed to make this. Fresh whipped cream on top", supplier_id: 1)
Product.create(name: "Smores pie", price: 9, description: "Graham cracker crust, chocolate filling and a toasted marshmallow topping", supplier_id: 3)
Product.create(name: "Lemon bar", price: 2, description: "bright and acidic but also chewy and with a crisp bottom", supplier_id: 3)
Product.create(name: "Apple crumb pie", price: 15, description: "What's more American than apple pie?", supplier_id: 1)
Product.create(name: "Pumpkin chocolate chip pie", price: 25, description: "A Martha Stewart recipe surere to please the pumpkin and chocolate fans", supplier_id: 1)
Product.create(name: "Cannoli", price: 3, description: "Homemade shell dipped in chocolate with ricotta filling", supplier_id: 3)

Image.create(url: "https://www.joyofbaking.com/images/facebook/brownies.jpg", product_id: 1)
Image.create(url: "https://www.jocooks.com/wp-content/uploads/2018/11/new-york-style-cheesecake-1-2.jpg", product_id: 2)
Image.create(url: "https://compote.slate.com/images/30d3dc31-1740-433d-87a0-1d83dffa07b8.jpg", product_id: 4)
Image.create(url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2018/7/19/0/KC1801_Frozen-Key-Lime-Pie_s4x3.jpg.rend.hgtvcom.826.620.suffix/1532027898233.jpeg", product_id: 5)
Image.create(url: "https://irepo.primecp.com/2016/09/301191/Toasty-Smores-Pie_ArticleImage-CategoryPage_ID-1891134.jpg?v=1891134", product_id: 6)
Image.create(url: "https://www.bakedbyanintrovert.com/wp-content/uploads/2015/08/Lemon-Bars-Recipe-Image-1.jpg", product_id: 7)
Image.create(url: "https://images-gmi-pmc.edge-generalmills.com/b6a2a4e7-73f5-4aec-9bb6-f2b5054d65e6.jpg", product_id: 8)
Image.create(url: "https://tasteinspired.files.wordpress.com/2010/11/pumkin-pie.jpg", product_id: 9)

Supplier.create(name: "Martha Stewart", email: "martha@gmail.com", phone_number: "1-800-MARTHA")
Supplier.create(name: "Mary Berry", email: "ih8soggybottoms@gmail.com", phone_number: "111-2222")
Supplier.create(name: "Christina Tosi", email: "milkbarlife@gmail.com", phone_number: "867-5309")
