# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
User.destroy_all
first_user = User.create(email: "user1@gmail.com", password: "user1@gmail.com")
second_user = User.create(email: "user2@gmail.com", password: "user2@gmail.com")
third_user = User.create(email: "user3@gmail.com", password: "user3@gmail.com")

Product.create(title: "Gucci Bag", description: "Stylish trendy bag that will open doors for you", brand: "Gucci", user: first_user, category: "bags", price: 249, picture_path:"bag1.png")
Product.create(title: "CARRERA", description: "THE CONTEMPORARY SPORTS WATCH INSPIRED BY MOTOR", brand: "Tag Heuer", user: first_user, category: "watch", price: 249, picture_path:"watches01.png")
Product.create(title: "FORMULA 1", description: "THE CASUAL SPORTS WATCH INSPIRED BY FORMULA 1", brand: "Tag Heuer", user: first_user, category: "watch", price: 249, picture_path:"watches01.png")
Product.create(title: "AQUARACER", description: "THE ESSENTIAL SPORTS WATCH INSPIRED BY THE AQUATIC WORLD", brand: "Tag Heuer", user: first_user, category: "watch", price: 249, picture_path:"watchesDark.png")
Product.create(title: "LINK", description: "THE NEW DRESS WATCH FOR LADIES", brand: "Tag Heuer", user: first_user, category: "watch", price: 249, picture_path:"watchesDark.png")
Product.create(title: "MONACO", description: "THE LEGENDARY TIMELESS WATCH WORN BY STEVE MCQUEEN", brand: "Tag Heuer", user: first_user, category: "watch", price: 249,picture_path:"watches01.png")
Product.create(title: "CIRCLES PENDANT", description: "A beautiful contrast between white gold and sparkling Tiffany ", brand: "Tiffany", user: first_user, category: "jewelry", price: 249, picture_path:"necklaces.png")
Product.create(title: "PENDANT", description: "In 18k rose gold with round brilliant diamonds. Size large, on a 16" , brand: "Tiffany", user: first_user, category: "jewelry", price: 249, picture_path:"necklacesDark.png")
Product.create(title: "TIFFANY SOUTH SEA", description: "In 18k gold with South Sea pearls and round brilliant diamonds. ", brand: "Tiffany", user: first_user, category: "jewelry", price: 249, picture_path:"necklaces.png")
Product.create(title: "ALMA BB", description: "The charming Alma BB traces its pedigree to the original Art Deco icon, ", brand: "Louis Vuitton", user: first_user, category: "bags", price: 249, picture_path:"bag2.png")
Product.create(title: "MAJESTUEUX TOTE PM", description: "The Majestueux Tote PM is the result of the finest craftsmanship, weaving ", brand: "Louis Vuitton", user: first_user, category: "bags", price: 249, picture_path:"bag3.png")
Product.create(title: "GAÏA", description: "Named for the Greek Mother Goddess, the Gaia is fittingly feminine in spirit. ", brand: "Louis Vuitton", user: first_user, category: "bags", price: 249, picture_path:"bag1.png")
