u = User.new([
  {email: "admin@test.com", encrypted_password: "$2a$11$8ti8Za4pFnCzb0T.ofavvO53sEjqAouDDl6HABE9K54/ZGQU7t1sy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 47, current_sign_in_at: "2017-05-10 09:11:24", last_sign_in_at: "2017-05-03 12:18:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Jeffrey", last_name: "Bartels", admin_role: true, user_role: true, preference: "omnivore"},
  {email: "ed@test.com", encrypted_password: "$2a$11$ihSDo3QEJGQnYjobkeufTeuSQ41fQ8XH1AQ8B8zvHxUI6Gbh2MfPu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-27 07:26:41", last_sign_in_at: "2017-02-27 07:26:41", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Ed", last_name: "Harnett", admin_role: nil, user_role: nil, preference: "vegetarian"},
  {email: "adam@test.com", encrypted_password: "$2a$11$GxaRM6MFtZd2dTXP2Q1wlOtXP6.IXnaOp9lWiCHiRxraAmsSOg6uG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2017-04-18 11:30:13", last_sign_in_at: "2017-04-16 05:54:32", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Adam", last_name: "Silva", admin_role: nil, user_role: nil, preference: "vegetarian"}
])

u.save!(validate: false)

Ingredient.create!([
  {meal_id: 1, name: "Baby Spinach", quantity: 150.0, unit: "millilitres"},
  {meal_id: 1, name: "Grated Cheese", quantity: 1.0, unit: "cups"},
  {meal_id: 1, name: "Tomato Pizza Sauce", quantity: 125.0, unit: "millilitres"},
  {meal_id: 2, name: "Sebago Potatoes", quantity: 1100.0, unit: "grams"},
  {meal_id: 2, name: "Yoghurt", quantity: 0.66, unit: "cups"},
  {meal_id: 2, name: "Dijon Mustard", quantity: 2.0, unit: "millilitres"},
  {meal_id: 2, name: "Shredded Cabbage", quantity: 250.0, unit: "cans"},
  {meal_id: 3, name: "Microwavable Brown Rice", quantity: 125.0, unit: "grams"},
  {meal_id: 3, name: "Snow Peas", quantity: 75.0, unit: "grams"},
  {meal_id: 3, name: "Avocado", quantity: 0.5, unit: "cups"},
  {meal_id: 3, name: "Green Onion", quantity: 1.0, unit: "cups"},
  {meal_id: 3, name: "Lemon Pepper Tuna", quantity: 1.0, unit: "cans"},
  {meal_id: 3, name: "Mayonaise", quantity: 20.0, unit: "millilitres"},
  {meal_id: 4, name: "Haloumi", quantity: 180.0, unit: "grams"},
  {meal_id: 4, name: "Canned Lentils", quantity: 400.0, unit: "grams"},
  {meal_id: 4, name: "Olives", quantity: 0.5, unit: "cups"},
  {meal_id: 4, name: "Extra Virgin Olive Oil", quantity: 20.0, unit: "millilitres"},
  {meal_id: 5, name: "Olive Oil", quantity: 10.0, unit: "millilitres"},
  {meal_id: 5, name: "Tomato Puree", quantity: 1.0, unit: "grams"},
  {meal_id: 5, name: "Maple Syrup", quantity: 80.0, unit: "grams"},
  {meal_id: 5, name: "Dijon Mustard", quantity: 10.0, unit: "grams"},
  {meal_id: 5, name: "Water", quantity: 1.0, unit: "grams"},
  {meal_id: 6, name: "Whole Egg Mayonaise", quantity: 0.66, unit: "cups"},
  {meal_id: 6, name: "Baby Rocket", quantity: 40.0, unit: "grams"},
  {meal_id: 6, name: "Salami", quantity: 100.0, unit: "grams"},
  {meal_id: 6, name: "Gruyere", quantity: 100.0, unit: "grams"},
  {meal_id: 7, name: "Butternut Pumpkin", quantity: 700.0, unit: "grams"},
  {meal_id: 7, name: "Olive Oil", quantity: 15.0, unit: "millilitres"},
  {meal_id: 7, name: "Dried Penne", quantity: 375.0, unit: "grams"},
  {meal_id: 7, name: "Canned Chickpeas", quantity: 2.0, unit: "cans"},
  {meal_id: 7, name: "Baby Spinach", quantity: 100.0, unit: "grams"},
  {meal_id: 7, name: "Jurrasic Park", quantity: 4.0, unit: "cans"},
  {meal_id: 1, name: "Wonton Noodle Soup", quantity: 63.0, unit: "cans"},
  {meal_id: 12, name: "Sauce", quantity: 12.0, unit: "cups"},
  {meal_id: 12, name: "Cream", quantity: 32.0, unit: "grams"},
  {meal_id: 9, name: "Heart", quantity: 12.0, unit: "cups"},
  {meal_id: 9, name: "Scorn", quantity: 6.0, unit: "millilitres"},
  {meal_id: 9, name: "Passion", quantity: 2.0, unit: "grams"},
  {meal_id: 9, name: "Anger", quantity: 99.0, unit: "cans"},
  {meal_id: 1, name: "Work", quantity: 30.0, unit: "cups"},
  {meal_id: 9, name: "Sassyness", quantity: 22.0, unit: "grams"},
  {meal_id: 13, name: "Ghosts", quantity: 4.0, unit: "grams"},
  {meal_id: 13, name: "Small pips", quantity: 99.0, unit: "millilitres"}
])
Item.create!([
  {shopping_list_id: 39, name: "Baby Spinach", quantity: 150.0, unit: "grams"},
  {shopping_list_id: 39, name: "Grated Cheese", quantity: 1.0, unit: "cups"},
  {shopping_list_id: 39, name: "Tomato Pizza Sauce", quantity: 125.0, unit: "millilitres"},
  {shopping_list_id: 39, name: "Wonton Noodle Soup", quantity: 63.0, unit: "millilitres"},
  {shopping_list_id: 39, name: "Sebago Potatoes", quantity: 1100.0, unit: "grams"},
  {shopping_list_id: 39, name: "Yoghurt", quantity: 0.66, unit: "cups"},
  {shopping_list_id: 39, name: "Dijon Mustard", quantity: 2.0, unit: "millilitres"},
  {shopping_list_id: 39, name: "Shredded Cabbage", quantity: 250.0, unit: "grams"},
  {shopping_list_id: 39, name: "Sebago Potatoes", quantity: 1100.0, unit: "grams"},
  {shopping_list_id: 39, name: "Yoghurt", quantity: 0.66, unit: "grams"},
  {shopping_list_id: 39, name: "Microwavable Brown Rice", quantity: 125.0, unit: "grams"},
  {shopping_list_id: 39, name: "Avocado", quantity: 0.5, unit: "cups"},
  {shopping_list_id: 39, name: "Green Onion", quantity: 1.0, unit: "cups"},
  {shopping_list_id: 39, name: "Lemon Pepper Tuna", quantity: 1.0, unit: "cans"},
  {shopping_list_id: 39, name: "Mayonaise", quantity: 20.0, unit: "millilitres"},
  {shopping_list_id: 39, name: "Heart", quantity: 12.0, unit: "cans"}
])
Meal.create!([
  {name: "Eggs Florentine pizzas", description: "Indulge in a bit of pizza at home during the week with this delicious dish that is ready in a flash.", method: "Preheat oven to 220°C. Heat a large frying pan over high heat. Add the bacon and cook, turning occasionally, for 5 minutes or until bacon is crisp. Transfer to a paper towel-lined plate.\r\nAdd spinach to pan and cook, stirring, for 2-3 minutes or until wilted. Season with salt and pepper. Remove from heat.\r\nPlace pizza bases on an oven tray. Spread evenly with sauce. Sprinkle with half the cheese. Top with spinach and bacon then crack an egg in the middle of each pizza. Sprinkle with remaining cheese and top with tomatoes. Bake in oven for 8-10 minutes or until cheese is golden brown and bubbling and egg is cooked as desired. Remove from oven and serve immediately.", meal_image_file_name: "eggs_florentine_pizzas.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 102053, meal_image_updated_at: "2017-02-26 07:53:09", diet: "omnivore", shopping_list_id: 39},
  {name: "Jacket potato with apple coleslaw", description: "For a lighter option make coleslaw with yoghurt instead of mayonnaise. It tastes delicious piled onto a baked spud.", method: "Preheat oven to 220C or 200C fan-force. Prick potatoes with fork and wrap individually in foil. Bake for 1 hour 10 minutes or until tender.\r\nMeanwhile, combine yoghurt, mustard and vinegar in a large bowl. Add cabbage, apple and onion. Season and toss to coat.\r\nServe potatoes with apple coleslaw. Sprinkle with walnuts.", meal_image_file_name: "jacket_potato_with_apple_coleslaw.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 62679, meal_image_updated_at: "2017-02-27 07:08:28", diet: "omnivore", shopping_list_id: 39},
  {name: "Japanese-style tuna and rice", description: "Quick, easy and filling, this Japanese-style lunch idea will keep you going all day long.", method: "Microwave rice following packet directions.\r\nMeanwhile, place snow peas in a bowl and cover with boiling water. Stand for 1 minute. Drain. Refresh under cold water. Drain.\r\n\r\nPlace avocado, tuna, onion, snow peas and rice in a bowl. Season with salt and pepper. Toss gently to combine.\r\n\r\nCombine mayonnaise, wasabi and 1 tablespoon water in a small bowl or glass. Drizzle with dressing. Serve.", meal_image_file_name: "japanesestyle_tuna_and_rice.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 113395, meal_image_updated_at: "2017-02-27 07:12:18", diet: "omnivore", shopping_list_id: 39},
  {name: "Lentil tabbouleh with haloumi", description: "Laced with vibrant Mediterranean flavours and freshly picked herbs, this satisfying salad is high in fibre and gluten-free", method: "Roughly chop the parsley and mint leaves, reserving a few whole leaves to garnish. Toss the chopped herbs with the tomato, lemon juice, oil, cinnamon and cumin, then season with freshly ground black pepper.\r\nThickly slice the haloumi, then fry in a dry, non-stick frypan over medium-high heat for 1-2 minutes until golden, then turn and fry for a further 1-2 minutes until golden.\r\nPlace the lentils on a serving plate, then top with tomato mixture and haloumi. Scatter over olives, lemon zest and reserved herbs, then serve with lemon wedges to squeeze over.", meal_image_file_name: "lentil_tabbouleh_with_haloumi.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 75518, meal_image_updated_at: "2017-02-27 07:14:54", diet: "vegetarian", shopping_list_id: 34},
  {name: "Maple pulled pork burgers with apple slaw", description: "For a drool-worthy feast, try this maple flavoured pulled pork, paired with crunchy apple slaw and served on fresh burger buns. Yum!", method: "\r\nHeat oil in a large deep saucepan over medium-high heat. Cook pork, turning, for 10 mins or until browned all over. Transfer to a heatproof bowl.\r\nAdd onion to pan and cook, stirring, for 2 mins or until starting to brown. Add garlic and paprika and cook, stirring, for 30 secs or until fragrant. Add tomato puree, maple syrup, mustard, water and mixed herbs. Bring to a simmer. Return pork to pan. Reduce heat to low and simmer, covered for 2 hours or until pork is very tender. Remove pork from pan. Shred meat coarsely, discarding any fat. Place in a bowl and toss with 1/2 cup (125ml) cooking liquid.\r\n\r\nCombine coleslaw, apple and dressing in a medium bowl. Place lettuce on bun bases. Top with pork, apple slaw and bun tops to serve.", meal_image_file_name: "maple_pulled_pork_burgers_with_apple_slaw.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 62529, meal_image_updated_at: "2017-02-27 07:17:08", diet: "omnivore", shopping_list_id: 34},
  {name: "Salami and Swiss cheese bagel sandwich", description: "Add pizzazz to work lunches with this very tasty salami and cheese bagel.", method: "Spread inside of bagels with mayonnaise. Top bases with rocket, cheese, gherkins, salami and mustard. Finish with bagel tops.", meal_image_file_name: "salami_and_swiss_cheese_bagel_sandwich.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 52981, meal_image_updated_at: "2017-02-27 07:20:29", diet: "omnivore", shopping_list_id: 34},
  {name: "Spiced chickpea and spinach pasta", description: "Sweet roasted pumpkin and cumin add flavour to this budget-friendly vegetarian meal.", method: "Preheat oven to 200C/180C fan-forced. Line a large baking tray with baking paper. Arrange pumpkin on baking tray. Spray with oil. Roast for 20 minutes or until golden and tender.\r\nMeanwhile, cook pasta in a saucepan of boiling salted water, following packet directions, until tender. Drain. Cover.\r\n\r\nHeat oil in a large, deep frying pan over medium heat. Add onion. Cook for 5 minutes or until softened. Add garlic, cumin and paprika. Cook, stirring, for 1 minute or until fragrant. Add chickpeas and pumpkin. Cook, tossing, for 2 minutes. Using the back of a wooden spoon, lightly crush 1/4 of the chickpeas.\r\nAdd stock and spinach to pan. Season with salt and pepper. Cook, tossing, for 3 to 4 minutes or until spinach just wilts. Add pasta and parsley. Toss until heated through. Divide pasta among serving bowls. Top with parmesan. Serve.", meal_image_file_name: "spiced_chickpea_and_spinach_pasta.jpeg", meal_image_content_type: "image/jpeg", meal_image_file_size: 97511, meal_image_updated_at: "2017-02-27 07:23:35", diet: "vegetarian", shopping_list_id: 32}
])
ShoppingList.create!([
  {name: "Laura's List"}
])
