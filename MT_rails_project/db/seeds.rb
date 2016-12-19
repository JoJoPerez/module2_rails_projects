# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

camera_list = [
  [ "Canon", "5D Mark III", "5668DL", "Great Camera" ],
  [ "Sony", "A7sII", "8108PE", "Awesome in low light" ],
  [ "Fuji", "Xpro2", "5705JP", "Gives a great film look" ],
  [ "Leica", "SL", "1941GG", "First time using it and it's great"]
]

camera_list.each do |brand, model, serial, review|
  Camera.create( brand: brand, model: model, serial: serial, review: review )
end
