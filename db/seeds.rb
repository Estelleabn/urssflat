# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

smoker = Tag.create(name: "Smoker")
pets = Tag.create(name: "Pets")
Tag.create(name: "Terrasse")
Tag.create(name: "Wifi")
Tag.create(name: "Jacuzzi")

user = User.new
user.email = 'test@gmail.com'
user.password = 'urssflat'
user.password_confirmation = 'urssflat'
user.full_name = "niels mayrargue"
user.telephone = "0147001798"
user.save!

flat = user.flats.new
flat.title = 'super appart'
flat.adress = 'address'
flat.day_price = '1'
flat.description = "lalala"
#flat.tags est un collection proxy, qui hérite d'un array. Automatiquement, un nouveau record est fait dans la table de jointure
flat.tags << smoker << pets
flat.save!

