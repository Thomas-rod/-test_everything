# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all Characters (#{Character.count})"
Character.all.each do |c| c.destroy end
puts "All Characters have been destroyed (#{Character.count})"

puts "Creation of new Characters"
character_one = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_one.name} is ready for battle !"
character_two = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_two.name} is ready for battle !"
character_three = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_three.name} is ready for battle !"
character_four = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_four.name} is ready for battle !"
character_five = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_five.name} is ready for battle !"
character_six = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_six.name} is ready for battle !"
character_seven = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_seven.name} is ready for battle !"
character_height = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_height.name} is ready for battle !"
character_nine = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_nine.name} is ready for battle !"
character_ten = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_ten.name} is ready for battle !"
character_eleven = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_eleven.name} is ready for battle !"
character_twelve = Character.create!(name: Faker::Movies::LordOfTheRings.character)
puts "#{character_twelve.name} is ready for battle !"

puts "#{Character.count} Characters have been created"
