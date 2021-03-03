# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "user1@user.com", password: "password" )


Experience.create!(
user_id: 1,
title: "Mad Dog's Sick Skydiving",
description: "Let Mad dog take you up in his plane and jump out solo at 12,000 meters after one quick morning of intensive fun filled demos on technique. Don't worry if you think you will freeze up, a friendly push will get you out there. Yeehaaw!!! Please note that all particpants must have mandatory life insurance and sign full risk waivers,",
location: "Melbourne Airport",
unit_current_price: 750,
)

Experience.create!(
user_id: 1,
title: "The Amazon at our Place!",
description: "Sick of being cooped up by quarantine restrictions in the city? We pick up from all Melbourne locations and then take you on a full day guided tour of our property in the Melbourne hills, where you can swim with pirhanas, wrestle a crocidle, make your own natural rubber and many many more Amazonian rainforest experiences. Who knew that the Amazon could be quite so close to home?",
location: "Picaninny Weir Track, Healesville VIC 3777",
unit_current_price: 125,
)

Experience.create!(
user_id: 1,
title: "Kai and Yuki's Harbour Adventures",
description: "Sydney Harbour is a cool place to go kayaking, and it is even better when you have some furry friends along as guides. We know Sydney harbour like the back of our paws, and can show you all the fun places to kayaks and get treats. Paddle us around for the day and you will never regret it. Smile about your adventures for years. ",
location: "1c Mrs Macquaries Rd, Sydney, NSW 200",
unit_current_price: 100,
)
Experience.create!(
user_id: 1,
title: "DangerMouse Beach Acrobatics",
description: "Fully accredited and certified gymnastic instructors will level up your acrobatic abilities no matter what you current level may be. 3 hours duration. Meet us down by North Bondi surf club one morning soon",
location: "120 Ramsgate Rd Bondi ",
unit_current_price: 75,
)
Experience.create!(
user_id: 1,
title: "Graf without the bash",
description: "See all the best inner city graffiti safely with Rico. See hard to get to pieces in neighbourhoods some may describe as 'sketchy' Sample local cuisine. Meet the underground artists that make our city shine through the grime!!! We start and end in a very comfortable inner city location. Unfortunately police and other law enforcement officers are strictly unwelcome on this tour.",
location: "3 Rose Terrace Paddington, Sydney,NSW ",
unit_current_price: 75,
)
Experience.create!(
user_id: 1,
title: "Craft Beer, Spirits and Gourmet Food Run",
description: "So many amazing things to eat and drink and so little time! Let our guides Kate and Mikayla show you the best of the city's craft food, spirits and food on the go offerings. No worries about lining up or knowing which places are worth your money or time when you come with us. Special cellar door deals available because everyone knows Kate n Kayla. Save time, save money and soak it all up. We are not responsible for the amount of calories in gorgeous food and drink you may consume whilst on our guided tours. Itineraries change rapidly depending on what is in and awesome!",
location: "425 Bourke St, Surry Hills , Sydney,NSW ",
unit_current_price: 75,
)




