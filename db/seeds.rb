# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "destroying seed"

MenuOption.destroy_all
MenuItem.destroy_all
Restaurant.destroy_all

puts "finished destroying seed"

puts "creating restaurants"


Restaurant.create(
    name: "Mono",
    address: "12 Kings Court, Glasgow, G1 5RB, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "Mono opened in 2002, furnishing Glasgow with a unique and versatile space in which to eat, drink and discover new music. Over our first decade, we developed a reputation for good beer, good vegan food, good gigs and good times. We are proud of our achievements but we aim to make our second decade even better.",
    phone: '01415532400'.to_i,
    email: "mono@email.com",
    imagekey: 1
)

Restaurant.create(
    name: "13th Note",
    address: "50-60 King Street, Glasgow, G1 5QT, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "Welcome to The 13th Note Cafe, an independent bar, restaurant and venue in Glasgow’s Merchant City. We cater for a vegan diet – all of our food is ethically sourced and free from animal cruelty – and stock a fine selection of vegan beers, lagers and wines.",
    phone: '01415531638'.to_i,
    email: "13thnote@email.com",
    imagekey: 2
)

Restaurant.create(
    name: "The V&V Cafe",
    address: "481 Great Western Road, Glasgow, G12 8HL, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "The V&V Cafe on Great Western Road was opened as a vegetarian and vegan cafe, but has relaunched a fully vegan menu in January 2018! The standard menu at the V&V includes several breakfast items, like porridge, yogurt with berries, a VLT sandwich and a vegan sausage bap. For lunch you can choose from a variety of toasties, sandwiches, baked potato, pakora kebab and the signature pakora toastie. Finally, you can also have the soup or the curry of the day, different pies and mediterranean flatbread with all kinds of fillings",
    phone: '01412377902'.to_i,
    email: "vandv@email.com",
    imagekey: 3
)

Restaurant.create(
    name: "The Flying Duck",
    address: "142 Renfield Street, Glasgow, G2 3AU, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "We are a basement bar, venue and vegan diner tucked  away  in Glasgow’s city centre. Established in 2007, The Duck is an integral part of Glasgow’s underground music, vegan and drinking scene. A sister venue to Stereo, Mono, The Old Hairdressers & The 78, we’re a bit of the black sheep of the family. With a dive bar vibe and food that rivals the biggest Michigan sized portions, we’re throwing a big set of the V’s to the traditional image of 'veganness'.",
    phone: '01415641450'.to_i,
    email: "flyingduck@email.com",
    imagekey: 4
)

Restaurant.create(
    name: "Glasvegan",
    address: "50 St Enoch Square, Glasgow, G1 4DH, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "100% plant based fast food in the heart of Glasgow. Sustainable and vegan, so you know you can treat yourself guilt-free!",
    phone: '01412263075'.to_i,
    email: "glasvegan@email.com",
    imagekey: 1
)

Restaurant.create(
    name: "Stereo",
    address: "22 Renfield Lane, Glasgow, G2 5AR, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "We've been around in Glasgow's city centre since 2007 in our beautiful building designed by the one and only Charles Rennie Mackintosh. Cosily snuggled into Renfield Lane we offer you a range of sensory pleasures! A dedicated vegan bar & kitchen during the day and into the dusty evenings, you'll be amazed by our unbeatable menu, cold beers and varied selection of boozy delights.",
    phone: '01412222254'.to_i,
    email: "stereo@email.com",
    imagekey: 2
)

Restaurant.create(
    name: "The 78",
    address: "10-14 Kelvinhaugh Street, Glasgow, G3 8NU, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "Next to its sister establishments Mono, Stereo, The Old Hairdresser’s and The Flying Duck, and it’s new East-coast cousin Harmonium, The 78 is something of an odd one out. It’s situated in Glasgow’s West End, for one thing – just off Argyle Street in the popular Finnieston neighbourhood. With chunky wooden tables, an open kitchen hatch at one end of the room and an open fire at the other, the atmosphere is cosy and relaxed, as is the service. The bar and kitchen, like the other bars in its stable, are 100% vegan, and the food is delightfully done at prices that buck the trend for the area.",
    phone: '01415765018'.to_i,
    email: "78@email.com",
    imagekey: 3
)

Restaurant.create(
    name: "Serenity Now",
    address: "380 Great Western Road, Glasgow, G4 9HT, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "Founded in 2017, Serenity Now is a plant-based cafe in Glasgow's West End, focussing on fresh, healthy vegan cuisine, world-class coffee (courtesy of our good friends at Dark Arts) and smoothies that'll knock your socks off. All of our recipes are created by us and cooked from scratch right here in our kitchen, 100% free from animal produce but with plenty of love & care.",
    phone: '01412618065'.to_i,
    email: "serenitynow@email.com",
    imagekey: 4
)

Restaurant.create(
    name: "Picnic",
    address: "103 Ingram Street, Glasgow, G1 1DX, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "Picnic was established in 2016 by Michelle Morrow to offer a healthy and ethical alternative to other Merchant City eateries. With a focus on fresh, whole, organic food and cruelty free ingredients, Picnic provides its customers with refreshing, delicious food in an airy, stylish and comfortable environment.",
    phone: '01415528788'.to_i,
    email: "picnic@email.com",
    imagekey: 1
)

Restaurant.create(
    name: "Soul Kitchen",
    address: "973 Sauchiehall Street, Glasgow, G3 7TQ, United Kingdom",
    open_time: 36000,
    close_time: 54000,
    about: "We are a100% plant-based restaurant with health and wellbeing at the heart and soul of everything we do. We were established to bring deliciously healthy plant-based food to Glasgow, unlike anything you have seen before.",
    phone: '01414065292'.to_i,
    email: "soulkitchen@email.com",
    imagekey: 2
)

puts "finished creating restaurants"

puts "creating menus"

Restaurant.all.each do |restaurant|
    20.times do |n|
        name = Faker::Food.dish
        price = rand(800..2500).round(-1)
        description = Faker::Lorem.sentence(word_count: 10)
        is_active = true
        item = MenuItem.create(name: name, price: price, description: description, is_active: is_active, restaurant_id: restaurant.id)
    
        2.times do |n|
            name = Faker::Food.vegetables
            price = rand(300..800).round(-1)
            description = Faker::Lorem.sentence(word_count: 5)
            MenuOption.create(name: name, price: price, description: description, menu_item_id: item.id)
        end
    end
end

puts "finished creating menus"

puts "finished seeding"
