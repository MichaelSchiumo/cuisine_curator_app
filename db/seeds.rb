# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Michael", email: "mschiumo18@gmail.com", years_experience: 3, location: "Sparta, NJ", password: "Kazakhstan2017")
User.create(name: "Michele", email: "michele@earthlink.net", years_experience: 35, location: "Sparta, NJ", password: "Whatever2018")


#1 
Cuisine.create(category: "National", classification: "Slovak") 
#2
Cuisine.create(category: "Regional", classification: "Central Asian")
#3
Cuisine.create(category: "National", classification: "Italian")
#4
Cuisine.create(category: "Regional", classification: "Mediterranean")
#5
Cuisine.create(category: "National", classification: "Russian")



Meal.create(name: "Qazi", ingredients: "Horse meat, intestine, garlic, spices", course: "breakfast/lunch/dinner", notes: "Not for the faint of heart.", prep_time: 120, user_id: 1, cuisine_id: 2, difficulty: 10, rating: 1, description: "The infamous horse-meat sausage.")

Meal.create(name: "Beshbarmak", ingredients: "Horse sausage, noodles, onions", course: "Feast for the Gods", notes: "Can substitute lamb with beef, if you're squeamish.", prep_time: 120, user_id: 1, cuisine_id: 2, difficulty: 10, rating: 10, description: "A Kazakh mainstay.")

Meal.create(name: "Plov", ingredients: "Basmati rice, beef, carrots, garlic", course: "Dinner", notes: "Make with mutton for the real thing.", prep_time: 90, user_id: 1, cuisine_id: 2, difficulty: 10, rating: 10, description: "Eat like a nomad!")

Meal.create(name: "Borscht", ingredients: "Beets, beef, sour cream", course: "Lunch", notes: "A good meal to enjoy in the banya.", prep_time: 55, user_id: 1, cuisine_id: 5, difficulty: 5, rating: 10, description: "It's technically Ukranian, but we won't tell anyone...")

Meal.create(name: "Kotleti", ingredients: "Carrots, beef, turkey", course: "Lunch", notes: "Ask Babushka for her recipe!", prep_time: 35, user_id: 1, cuisine_id: 5, difficulty: 3, rating: 9, description: "You don't know what you're missing...")

Meal.create(name: "Pelmeni", ingredients: "Garlic, sour cream, beef, pasta", course: "Anytime!", notes: "Don't forget the sour cream, please!", prep_time: 20, user_id: 1, cuisine_id: 5, difficulty: 1, rating: 10, description: "If you haven't had it, are you even Russian?" )

Meal.create(name: "Barley Soup", ingredients: "Beef stock, mushrooms, barley", course: "Lunch", notes: "Add extra mushrooms to taste.", prep_time: 40, user_id: 1, cuisine_id: 1, difficulty: 6, rating: 7, description: "A Christmas-time classic.")


Meal.create(name: "Scallops Provencale", ingredients: "Scallops, garlic, fresh herbs", course: "Dinner", notes: "Be sure not to tear the scallops when cleaning.", prep_time: 70, user_id: 1, cuisine_id: 4, difficulty: 9, rating: 3, description: "Not my cup of tea, but maybe you'll like it?")


Meal.create(name: "Mediterranean Bean Salad", ingredients: "Cannelini beans, tomatoes, olive oil", course: "Lunch", notes: "Make it heartier with another type of bean.", prep_time: 10, user_id: 1, cuisine_id: 4, difficulty: 2, rating: 4, description: "A nice addition to any meal.")

Meal.create(name: "Halushki", ingredients: "Cabbage, noodles, butter", course: "Lunch", notes: "Make sure the cabbage is given a nice sautè!", prep_time: 10, user_id: 1, cuisine_id: 1, difficulty: 6, rating: 10, description: "Buttery, noodle-y, and tasty. What more could you want?!")

Meal.create(name: "Spaghetti and Meatballs", ingredients: "Ground Beef, Crushed Tomatoes, Spaghetti", course: "Dinner", notes: "A little extra garlic never hurt anyone...", prep_time: 45, user_id: 1, cuisine_id: 3, difficulty: 6, rating: 10, description: "A hearty, rustic, Italian meal.")

Meal.create(name: "Pizza", ingredients: "Flour, tomato sauce, mozzarella", course: "Lunch", notes: "Dad likes it crispy.", prep_time: 35, user_id: 1, cuisine_id: 3, difficulty: 4, rating: 8, description: "Grab a slice!")

Meal.create(name: "Shrimp Scampi", ingredients: "Shrimp, lemon, garlic", course: "Dinner", notes: "Use fresh basil.", prep_time: 25, user_id: 1, cuisine_id: 3, difficulty: 3, rating: 5, description: "Fresh, fragrant, filling.")

Meal.create(name: "Goulash", ingredients: "Noodles, beef, carrots", course: "Lunch", notes: "Extra gravy on this one.", prep_time: 45, user_id: 1, cuisine_id: 1, difficulty: 4, rating: 7, description: "An absolute delight.")

Meal.create(name: "Perogi", ingredients: "Dough, potatoes, sour cream", course: "Dinner", notes: "Never forget the sour cream!", prep_time: 80, user_id: 1, cuisine_id: 1, difficulty: 6, rating: 9, description: "A classic.")
