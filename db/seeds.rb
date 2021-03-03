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
description: "Let Mad dog take you up in his plane and jump out solo at 12,000 meters after one quick morning of intensive fun filled demos on technique. Don't worry if you think you will freeze up, a friendly push will get you out there. Yeehaaw!!! Please not that all particpants must have mandatory life insurance and sign full risk waivers,",
location: "Melbourne Airport",
unit_current_price: 750,
)


