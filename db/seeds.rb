# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
puts "users ready to be seeded!"
sleep(1)
puts "Go!"
User.create(first_name: "oliv", last_name: "B", email: "oliv@randomlife.fun", phone_number: "0609052213", nickname: "p403n1x", group_id: 1, password: "azerty")
User.create(first_name: "anaelle", last_name: "C", email: "anana@randomlife.fun", phone_number: "0619033283", nickname: "ananel", group_id: 1, password: "azerty")
User.create(first_name: "vanessa", last_name: "A", email: "vanesse@randomlife.fun", phone_number: "0600050332", nickname: "aunty", group_id: 2, password: "azerty")
User.create(first_name: "noemie", last_name: "D", email: "nonolemie@randomlife.fun", phone_number: "0602409553", nickname: "noef", group_id: 2, password: "azerty")
puts "Seeding users completed"

Group.delete_all
puts "groups ready to be seeded!"
sleep(1)
puts "Go!"
Group.create(name: "Lacoloc", address: "labas", description: "maison", token: "AZERTYUIOP")
Group.create(name: "Lewagon", address: "ici", description: "ecole", token: "QSDGHJKLM")
puts "Seeding groups completed"


Category.delete_all
puts "Creating categories"
sleep(1)
puts "Go!"
Category.create(title: 'Holidays', kind: 'Event', image: "https://picsum.photos/200/300")
Category.create(title: 'Cleaning', kind: 'Task', image: "https://picsum.photos/200/300")
Category.create(title: 'Admin', kind: 'Task', image: "https://picsum.photos/200/300")
Category.create(title: 'Fixing stuff', kind: 'Task', image: "https://picsum.photos/200/300")
Category.create(title: 'Going out', kind: 'Event', image: "https://picsum.photos/200/300")
Category.create(title: 'Shopping', kind: 'Event', image: "https://picsum.photos/200/300")
puts "Seeding categories completed"


Task.delete_all
puts "Creating Tasks"
sleep(1)
puts "Go!"
Task.create(user_id: 1, category_id: 2, name: "nettoyer wc", progress: "pending", start_date: Time.now)
Task.create(user_id: 2, category_id: 1, name: "rent pick up", progress: "done", start_date: Time.now)
Task.create(user_id: 3, category_id: 2, name: "clean window saloon", progress: "pending", start_date: Time.now)
Task.create(user_id: 4, category_id: 4, name: "call the owner", progress: "done", start_date: Time.now)
Task.create(user_id: 4, category_id: 5, name: "Who's not drinking? Sam?", progress: "done", start_date: Time.now)
Task.create(user_id: 4, category_id: 6, name: "Who's buying the beers?", progress: "done", start_date: Time.now)
puts "Seeding tasks completed"

Option.delete_all
puts "Creating Options"
sleep(1)
puts "Go!"
Option.create(category_id: 5, name: "Cinema", duration: 3, selected: true)
Option.create(category_id: 5, name: "Museum", duration: 1.5, selected: false)
Option.create(category_id: 5, name: "Restaurant", duration: 2, selected: false)
puts "Seeding Options completed"

Groupcategory.delete_all
puts "Creating Groupcategorys"
sleep(1)
puts "Go!"
Groupcategory.create(group_id: 1,category_id: 5, name: "Cinema", duration: 3, selected: true)
Groupcategory.create(group_id: 1,category_id: 5, name: "Museum", duration: 1.5, selected: false)
Groupcategory.create(group_id: 1,category_id: 5, name: "Restaurant", duration: 2, selected: false)

Groupcategory.create(group_id: 2,category_id: 2, name: "Bahamas", duration: 2400, selected: true)
Groupcategory.create(group_id: 2,category_id: 2, name: "Thailand", duration: 240, selected: false)
Groupcategory.create(group_id: 2,category_id: 2, name: "Paris", duration: 24, selected: false)
puts "Seeding Groupcategorys completed"

puts "All is done!!!"
