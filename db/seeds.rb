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

u1 = User.create(name: "Name 1", user_name: "User1", password: "Password1")
u2 = User.create(name: "Name 2", user_name: "User2", password: "Password2")
u3 = User.create(name: "Name 3", user_name: "User3", password: "Password3")
u4 = User.create(name: "Name 4", user_name: "User4", password: "Password4")
u5 = User.create(name: "Name 5", user_name: "User5", password: "Password5")
u6 = User.create(name: "Name 6", user_name: "User6", password: "Password6")

r1 = Restaurant.new(name: "Breakfast Inc.")

f1 = Food.create(name:"Food1", food_info: "Food_info1", image_url: "image1", restaurant: r1)
f2 = Food.create(name:"Food2", food_info: "Food_info2", image_url: "image2", restaurant: r1)
f3 = Food.create(name:"Food3", food_info: "Food_info3", image_url: "image3", restaurant: r1)
f4 = Food.create(name:"Food4", food_info: "Food_info4", image_url: "image4", restaurant: r1)
f5 = Food.create(name:"Food5", food_info: "Food_info5", image_url: "image5", restaurant: r1)

l1 = Location.create(address: "Location1", restaurant: r1)

Review.create(date: "01-15-2020", like: 0, comment: "This is a good place to eat", user: u1, restaurant: r1)
Review.create(date: "04-03-2020", like: 0, comment: "I love their salad and brocolli. Super awesome", user: u2, restaurant: r1)
Review.create(date: "03-25-2020", like: 0, comment: "100% recommend. This is an amazing spot", user: u3, restaurant: r1)
Review.create(date: "05-15-2020", like: 0, comment: "I like to always come to this awesome place", user: u4, restaurant: r1)
