# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Globaluser.create(username: "LadyBird1", first_name: "Beth", last_name: "Smith", client: true ,designer: false  ,password: "ilovetigers" ,email: "bethsmith@gmail.com")

Globaluser.create(username: "MiketheDyke", first_name: "Mike", last_name: "Larson", client: false, designer: true, password: "funnystuff",  email: "mikethedyke@yahoo.com")

Globaluser.create(username: "furrybeast", first_name: "Dan", last_name: "Son", client: true, designer: false, password: "hithereimdan", email: "furrybeast@gmail.com")

Globaluser.create(username: "teddybearmama", first_name: "Johanna", last_name: "Masters", client: false, designer: true, password: "ilovebears", email: "teddybearmama@gmail.com")



Costume.create(title: "Gaia", style: "fullsuit-digirade", reference_sheet: "", globaluser_id: 1)

Costume.create(title: "Werewolf", style: "fullsuit-plantigrade", reference_sheet: "", globaluser_id: 2)

Costume.create(title: "Tabitha", style: "hand paws", reference_sheet: "",  globaluser_id: 3)

Costume.create(title: "Gray", style: "feet paws",  reference_sheet: "", globaluser_id: 4)
