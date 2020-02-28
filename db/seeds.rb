# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Groupcategory.destroy_all
# Group.destroy_all
# User.destroy_all
# Category.destroy_all
# Task.destroy_all
# Option.destroy_all


puts "groups ready to be seed!"
sleep(1)
puts "Go!"
Group.create!(name: "Lacoloc", address: "labas", description: "maison", token: "AZERTYUIOP")
Group.create!(name: "Lewagon", address: "ici", description: "ecole", token: "QSDGHJKLM")
puts "Seeding Groups completed"


puts "users ready to be seed!"
sleep(1)
puts "Go!"
User.create!(first_name: "oliv", last_name: "B", email: "oliv@randomlife.fun", phone_number: "0609052213", nickname: "p403n1x", group_id: Group.first.id, password: "azerty")
User.create!(first_name: "anaelle", last_name: "C", email: "anana@randomlife.fun", phone_number: "0619033283", nickname: "ananel", group_id: Group.first.id, password: "azerty")
User.create!(first_name: "robert", last_name: "Dupont", email: "bob@randomlife.fun", phone_number: "0665552243", nickname: "bob", group_id: Group.first.id, password: "azerty")
User.create!(first_name: "yohan", last_name: "Durand", email: "yohan@randomlife.fun", phone_number: "0612087763", nickname: "yoyo", group_id: Group.first.id, password: "azerty")
User.create!(first_name: "emanuelle", last_name: "Philippe", email: "emanuelle@randomlife.fun", phone_number: "0601152773", nickname: "Manu", group_id: Group.first.id, password: "azerty")
User.create!(first_name: "francois", last_name: "Crao", email: "francois@randomlife.fun", phone_number: "0618833113", nickname: "franchoi", group_id: Group.first.id, password: "azerty")

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




puts "categories ready to be seed!"
sleep(1)
puts "Go!"

puts "categories ready to be seed!"
sleep(1)
puts "Go!"
puts "Creating Categories"
# file = File.open("../app/assets/images/holidays.jpg")
# d =Category.new(title: 'Holidays', kind: 'event')
# d.image.attach(io: file, filename: "holidays.jpg", content_type: "image/jpg")
# d.save!
# file = File.open("../app/assets/images/cleaning.jpg")
# d =Category.new(title: 'Cleaning', kind: 'task')
# d.image.attach(io: file, filename: "cleaning.jpg", content_type: "image/jpg")
# d.save!
# file = File.open("../app/assets/images/admin.jpg")
# d = Category.new(title: 'Admin', kind: 'task')
# d.image.attach(io: file, filename: "admin.jpg", content_type: "image/jpg")
# d.save!
# file = File.open("../app/assets/images/fixing.jpg")
# d =Category.new(title: "Fixing stuff", kind: 'task')
# d.image.attach(io: file, filename: "fixing.jpg", content_type: "image/jpg")
# d.save!
# file = File.open("../app/assets/images/out.jpg")
# d =Category.new(title: "Going out", kind: "event")
# d.image.attach(io: file, filename: "out.jpg", content_type: "image/jpg")
# d.save!
# file = File.open("../app/assets/images/dice.jpg")
# d =Category.new(title: "Shopping", kind: "task")
# d.image.attach(io: file, filename: "dice.jpg", content_type: "image/jpg")
# d.save!
puts "Seeding Categories completed"

file = URI.open('https://res.cloudinary.com/dvmwdazf6/image/upload/v1582285768/DRuLwh75KbpX8GFJ8B5cDbYv.jpg')
category = Category.new(kind: 'Task', title: "Cooking")
category.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
category.save
# Category.create!(title: "Cleaning", kind: "task", image: "https://picsum.photos/200/300")
# Category.create!(title: "Admin", kind: "task", image: "https://picsum.photos/200/300")
# Category.create!(title: "Fixing stuff", kind: "task", image: "https://picsum.photos/200/300")
# Category.create!(title: "Going out", kind: "event", image: "https://picsum.photos/200/300")
# Category.create!(title: "Shopping", kind: "event", image: "https://picsum.photos/200/300")
puts "Seeding Categories completed"


puts "options ready to be seed!"
sleep(1)
puts "Go!"
Option.create!(category_id: Category.first.id, name: "Cinema", duration: 3, selected: true)
Option.create!(category_id: Category.first.id, name: "Museum", duration: 1, selected: false)
Option.create!(category_id: Category.first.id, name: "Restaurant", duration: 2, selected: false)
puts "Seeding Options completed"





puts "tasks ready to be seed!"
sleep(1)
puts "Go!"
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "nettoyer wc", progress: "pending", start_date: Time.now)
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "rent pick up", progress: "done", start_date: Time.now)
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "clean window saloon", progress: "pending", start_date: Time.now)
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "call the owner", progress: "done", start_date: Time.now)
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "Who's not drinking? Sam?", progress: "done", start_date: Time.now)
Task.create!(user_id: User.first.id, category_id: Category.first.id, name: "Who's buying the beers?", progress: "done", start_date: Time.now)
puts "Seeding Tasks completed"


puts "groupcategories ready to be seed!"
sleep(1)
puts "Go!"
Groupcategory.create!(group_id: Group.first.id,category_id: Category.first.id)
# Groupcategory.create!(group_id: Group.first.id,category_id: Category.first.id)
puts "Seeding Groupcategorys completed"

puts "All is done!!!"
