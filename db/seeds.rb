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

r1 = Restaurant.create!(name: "World's Food Stories", city:"Miami", img_url:"https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60")
r2 = Restaurant.create!(name: "Streetside Burger", city:"San Francisco", img_url:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
r3 = Restaurant.create!(name: "Salads & Noodles", city:"Atlanta", img_url:"https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60")



f1 = Food.create(name:"Japanese Food", food_info: "Salad With Smoked Eel with Unagi Sauce", image_url: "https://image.shutterstock.com/image-photo/salad-smoked-eel-unagi-sauce-600w-128657267.jpg", restaurant: r1)
f2 = Food.create(name:"Thai Food", food_info: "Tom Yum Goong", image_url: "https://image.shutterstock.com/image-photo/tom-yum-goongthai-food-600w-298558445.jpg", restaurant: r1)
f3 = Food.create(name:"Mexican Food", food_info: "PERUVIAN CEVICHE SEBICHE. Peruvian seafood and fish sebiche with maize.", image_url: "https://image.shutterstock.com/image-photo/peruvian-ceviche-sebiche-seafood-fish-600w-1027473010.jpg", restaurant: r1)
f4 = Food.create(name:"Italian Food", food_info: "mussels in white wine sauce with glass of white wine white bread toasts, decorated with hilly pepper, lemon and sea salt", image_url: "https://image.shutterstock.com/image-photo/mussels-white-wine-sauce-glass-600w-669217618.jpg", restaurant: r1)
f5 = Food.create(name:"Latin American Food", food_info: "Latin American chilean food. Traditional chilean cazuela de cerdo with chuchoca. Pork soup with potatoes, pumpkin. corn served in clay bowl from Pomaire", image_url: "https://image.shutterstock.com/image-photo/latin-american-chilean-food-traditional-600w-668974699.jpg", restaurant: r1)
f6 = Food.create(name:"Streetside Classic", food_info: "1/3 lb all natural fresh ground Angus beef, American cheese, lettuce, tomato, crispy pickle with signature sauce on a fresh brioche bun.", image_url: "http://www.streetsideburger.com/uploads/1/0/7/9/107905635/editor/streetside-burger3197-edit-2-classic.jpg?1498583591", restaurant: r2)
f7 = Food.create(name:"Churchill Burger", food_info: "8 oz double all natural fresh ground Angus beef patties, double American cheese, fresh cut onion, mayo, Heinz ketchup on a fresh brioche bun.", image_url: "http://www.streetsideburger.com/uploads/1/0/7/9/107905635/published/streetside-burger3214-2-churchill.jpg?1498584453", restaurant: r2)
f8 = Food.create(name:"BBQ Bacon Burger", food_info: "1/3 lb all natural fresh ground Angus beef, bacon, cheddar, caramelized onions, simply Heinz BBQ sauce on a fresh brioche bun.", image_url: "http://www.streetsideburger.com/uploads/1/0/7/9/107905635/published/streetside-burger3294-edit-bbq-bacon-burger.jpg?1498584676", restaurant: r2)
f9 = Food.create(name:"California Burger", food_info: "1/3 lb all natural fresh ground Angus beef, cage free egg, fresh guacamole, fresh cut onion, crisp lettuce, Heinz chipotle sauce on a fresh brioche bun.", image_url: "http://www.streetsideburger.com/uploads/1/0/7/9/107905635/published/streetside-burger3609-edit-cali-burger-no-bacon.jpg?1499355803", restaurant: r2)
f10 = Food.create(name:"Mushroom Swiss Burger", food_info: "1/3 lb all natural fresh ground Angus beef, sauteed mushrooms, sauteed onion, Swiss cheese topped with A1 sauce on a fresh brioche bun.", image_url: "http://www.streetsideburger.com/uploads/1/0/7/9/107905635/published/streetside-burger3419-edit-2-mushroom-burger.jpg?1498585532", restaurant: r2)
f11 = Food.create(name:"Chicken teriyaki", food_info: "Chicken teriyaki on dark background with balsamic sauce and sesame seeds. Asian food. Noodles.", image_url: "https://image.shutterstock.com/image-photo/chicken-teriyaki-on-dark-background-600w-691043530.jpg", restaurant: r3)
f12 = Food.create(name:"Buddha bowl", food_info: "Buddha bowl dish with chicken fillet, brown rice, avocado, pepper, tomato, broccoli, red cabbage, chickpea, fresh lettuce salad, pine nuts and walnuts. Healthy balanced eating. ", image_url: "https://image.shutterstock.com/image-photo/buddha-bowl-dish-chicken-fillet-600w-1033079713.jpg", restaurant: r3)
f13 = Food.create(name:"Healthy salad bowl", food_info: "Healthy salad bowl with quinoa, tomatoes, chicken, avocado, lime and mixed greens, lettuce, parsley on wooden background top view. Food and health.", image_url: "https://image.shutterstock.com/image-photo/healthy-salad-bowl-quinoa-tomatoes-600w-521741356.jpg", restaurant: r3)
f14 = Food.create(name:"Plate of noodle", food_info: "Plate of noodles with meat and vegetables isolated on white background", image_url: "https://image.shutterstock.com/image-photo/plate-noodles-meat-vegetables-isolated-600w-1027732945.jpg", restaurant: r3)
f15 = Food.create(name:"Vegan Buddha bowl", food_info: "Vegan Buddha bowl with chickpeas, courgette, sundried tomatoes and sprouts", image_url: "https://image.shutterstock.com/image-photo/vegan-buddha-bowl-chickpeas-courgette-600w-1021858819.jpg", restaurant: r3)


l1 = Location.create(address: "1039 N Miami Ave, Miami, FL 33136", restaurant: r1)
l2 = Location.create(address: "475 Pacific Ave, San Francisco, CA 94133", restaurant: r2)
l3 = Location.create(address: "6405 Blue Stone Rd #205, Sandy Springs, GA 30328", restaurant: r3)


Review.create(date: "01-15-2020", rating: 5, comment: "This is a good place to eat", user: u1, restaurant: r1)
Review.create(date: "04-03-2020", rating: 4, comment: "I love their salad and brocolli. Super awesome", user: u2, restaurant: r2)
Review.create(date: "03-25-2020", rating: 5, comment: "100% recommend. This is an amazing spot", user: u3, restaurant: r3)
Review.create(date: "05-15-2020", rating: 4, comment: "I like to always come to this awesome place", user: u4, restaurant: r2)






