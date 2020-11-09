require 'faker'
require 'json'
require 'open-uri'
require 'pry-byebug'

# Clear the db first
puts "Clearing the Meals table"
Meal.destroy_all

puts "Clearing the Pokemons table"
Pokemon.destroy_all

5.times do |index|
  puts "creating new meal"

  new_meal = Meal.new(
    name: Faker::Food.dish,
    description: Faker::Food.description
  )

  new_meal.save! # exception on why the saving failed
end

base_url = "https://pokeapi.co/api/v2/pokemon/"

151.times do |index|
  raw_json = open(base_url + (index + 1).to_s).read
  data = JSON.parse(raw_json)

  puts "creating #{data["name"]}"
  
  Pokemon.create!(
    name: data["name"],
    element: data["types"].first["type"]["name"],
    level: 0
  )
end


puts "Seed done!"