# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "user1@user.com", password: "password" )


Experience.create!(
user_id: user.id,
title: "Scuba Diving",
description: "Best Scuba class in Melbourne",
unit_current_price: "300"
  )
Experience.create!(
user_id: user.id,
title: "Sky Diving",
description: "Best Sky diving class in Melbourne",
unit_current_price: "2000"
  )
Experience.create!(
user_id: user.id,
title: "Deep Sea Diving",
description: "Best Deep Sea Diving class in Melbourne",
unit_current_price: "4000"
  )
