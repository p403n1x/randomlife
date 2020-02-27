# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Group.delete_all
puts "groups ready to be seed!"
sleep(1)
puts "Go!"
Group.create!(name: "Lacoloc", address: "labas", description: "maison", token: "AZERTYUIOP")
Group.create!(name: "Lewagon", address: "ici", description: "ecole", token: "QSDGHJKLM")
puts "Seeding Groups completed"

User.delete_all
puts "users ready to be seed!"
sleep(1)
puts "Go!"
User.create!(first_name: "oliv", last_name: "B", email: "oliv@randomlife.fun", phone_number: "0609052213", nickname: "p403n1x", group_id: 1, password: "azerty")
User.create!(first_name: "anaelle", last_name: "C", email: "anana@randomlife.fun", phone_number: "0619033283", nickname: "ananel", group_id: 1, password: "azerty")
User.create!(first_name: "robert", last_name: "Dupont", email: "bob@randomlife.fun", phone_number: "0665552243", nickname: "bob", group_id: 1, password: "azerty")
User.create!(first_name: "yohan", last_name: "Durand", email: "yohan@randomlife.fun", phone_number: "0612087763", nickname: "yoyo", group_id: 1, password: "azerty")
User.create!(first_name: "emanuelle", last_name: "Philippe", email: "emanuelle@randomlife.fun", phone_number: "0601152773", nickname: "Manu", group_id: 1, password: "azerty")
User.create!(first_name: "francois", last_name: "Crao", email: "francois@randomlife.fun", phone_number: "0618833113", nickname: "franchoi", group_id: 1, password: "azerty")

user = User.find_by(first_name: 'oliv')
user.update(image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
user = User.find_by(first_name: 'anaelle')
user.update(image: "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
user = User.find_by(first_name: 'robert')
user.update(image: "https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=845&q=80")
user = User.find_by(first_name: 'yohan')
user.update(image: "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80")
user = User.find_by(first_name: 'emanuelle')
user.update(image: "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
user = User.find_by(first_name: 'francois')
user.update(image: "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")

puts "Seeding Users completed"



Category.delete_all
puts "categories ready to be seed!"
sleep(1)
puts "Go!"
Category.create!(title: 'Holidays', kind: 'event', image: "https://picsum.photos/200/300")
Category.create!(title: 'Cleaning', kind: 'task', image: "https://picsum.photos/200/300")
Category.create!(title: 'Admin', kind: 'task', image: "https://picsum.photos/200/300")
Category.create!(title: 'Fixing stuff', kind: 'task', image: "https://picsum.photos/200/300")
Category.create!(title: 'Going out', kind: 'event', image: "https://picsum.photos/200/300")
Category.create!(title: 'Shopping', kind: 'event', image: "https://picsum.photos/200/300")
puts "Seeding Categories completed"

Option.delete_all
puts "options ready to be seed!"
sleep(1)
puts "Go!"
Option.create!(category_id: 5, name: "Cinema", duration: 3, selected: true)
Option.create!(category_id: 5, name: "Museum", duration: 1.5, selected: false)
Option.create!(category_id: 5, name: "Restaurant", duration: 2, selected: false)
puts "Seeding Options completed"




Task.delete_all
puts "tasks ready to be seed!"
sleep(1)
puts "Go!"
Task.create!(user_id: 1, category_id: 2, name: "nettoyer wc", progress: "pending", start_date: Time.now)
Task.create!(user_id: 2, category_id: 1, name: "rent pick up", progress: "done", start_date: Time.now)
Task.create!(user_id: 3, category_id: 2, name: "clean window saloon", progress: "pending", start_date: Time.now)
Task.create!(user_id: 4, category_id: 4, name: "call the owner", progress: "done", start_date: Time.now)
Task.create!(user_id: 4, category_id: 5, name: "Who's not drinking? Sam?", progress: "done", start_date: Time.now)
Task.create!(user_id: 4, category_id: 6, name: "Who's buying the beers?", progress: "done", start_date: Time.now)
puts "Seeding Tasks completed"

Groupcategory.delete_all
puts "groupcategories ready to be seed!"
sleep(1)
puts "Go!"
Groupcategory.create!(group_id: 1,category_id: 5)
Groupcategory.create!(group_id: 2,category_id: 2)
puts "Seeding Groupcategorys completed"

puts "All is done!!!"
