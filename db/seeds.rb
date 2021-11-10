# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brewing.destroy_all
puts "brewings destroyed"

Brewing.create(name: "pale ale", brewers: "Finn og Tormod", batch_number: 66, strength: 5.8, original_gravity: 1.054,
  final_gravity: 1.010, date: Date.new(2021, 3, 21),
  notes: "OG mål 1055, FG 1010 \n Ble tørrhumling 7.4. - 2 dager sent. Hadde ikke nok \n Gjæring på 19 grader stabilt
\n Tappet om 13.4.")

# Brewing name:string brewers:string batch_number:integer
# strength:integer original_gravity:integer
# final_gravity:integer notes:text date:date
