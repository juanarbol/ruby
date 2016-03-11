# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Edifice.create(nombre:"Torre Juan", portero:"Juanjo")
Apartment.create(name:"Apartacho de Juan", floor:1, edifice_id: 1)
Apartment.create(name:"Apartacho de Juan #2", floor:1, edifice_id: 1)
Person.create(name: "Juan", apartment_id:1)
