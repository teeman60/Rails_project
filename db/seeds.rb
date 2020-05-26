# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Review.destroy_all
Food.destroy_all
Restaurant.destroy_all
Location.destroy_all

u1 = User.create(name: "Name 1", user_name: "User1", age: 17, password_digest: "yugjubikuyyuytd")
u2 = User.create(name: "Name 2", user_name: "User2", age: 17, password_digest: "yugjubikuyyuytd")
u3 = User.create(name: "Name 3", user_name: "User3", age: 17, password_digest: "yugjubikuyyuytd")
u4 = User.create(name: "Name 4", user_name: "User4", age: 17, password_digest: "yugjubikuyyuytd")
u5 = User.create(name: "Name 5", user_name: "User5", age: 17, password_digest: "yugjubikuyyuytd")
u6 = User.create(name: "Name 6", user_name: "User6", age: 17, password_digest: "yugjubikuyyuytd")

r1 = Restaurant.create!(name: "Breakfast Inc.")
r2 = Restaurant.create!(name: "Waffle House")
r3 = Restaurant.create!(name: "Wingstop")



f1 = Food.create(name:"Food1", food_info: "Food_info1", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20190503-delish-pineapple-baked-salmon-horizontal-ehg-450-1557771120.jpg?crop=1.00xw:0.753xh;0,0.132xh&resize=768:*", restaurant: r1)
f2 = Food.create(name:"Food2", food_info: "Food_info2", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-garlic-butter-mushrooms-007-1541801828.jpg?crop=0.668xw:1.00xh;0,0&resize=768:*", restaurant: r2)
f3 = Food.create(name:"Food3", food_info: "Food_info3", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gallery-1482440312-slow-cooker-beef-and-barley-soupl1-1525823342.jpg?crop=0.667xw:1.00xh;0.168xw,0&resize=768:*", restaurant: r3)
f4 = Food.create(name:"Food4", food_info: "Food_info4", image_url: "https://hips.hearstapps.com/del.h-cdn.co/assets/18/01/1515085622-gallery-1486133611-greek-alfredo-wide.jpg?crop=0.563xw:1.00xh;0.216xw,0&resize=768:*", restaurant: r3)
f5 = Food.create(name:"Food5", food_info: "Food_info5", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-brie-brussels-sprouts-bites-pinterest-still002-1541098432.jpg?crop=1.00xw:0.668xh;0,0.120xh&resize=768:*", restaurant: r2)


l1 = Location.create(address: "Location1", restaurant: r1)
l1 = Location.create(address: "Location2", restaurant: r2)
l1 = Location.create(address: "Location3", restaurant: r3)


Review.create!(date: "01-15-2020", rating: 1, comment: "This is a good place to eat", user: u1, restaurant: r1)
Review.create(date: "04-03-2020", rating: 1, comment: "I love their salad and brocolli. Super awesome", user: u2, restaurant: r1)
Review.create(date: "03-25-2020", rating: 1, comment: "100% recommend. This is an amazing spot", user: u3, restaurant: r1)
Review.create(date: "05-15-2020", rating: 1, comment: "I like to always come to this awesome place", user: u4, restaurant: r1)
