# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

#create a couple users for votes and login
initial_user = User.create(
  email: "cpower@example.com",
  password: "test1234",
  password_confirmation: "test1234"
)
user2 = User.create(
  email: "user@example.com",
  password: "test1234",
  password_confirmation: "test1234"
)

#create a couple pokemon to vote for
pokemon = Pokemon.create(name: "charmander")
pokemon2 = Pokemon.create(name: "pikachu")

#make sure one pokemon has more votes than another
Vote.create(user_id: initial_user.id, pokemon_id: pokemon.id)
Vote.create(user_id: user2.id, pokemon_id: pokemon.id)

Vote.create(user_id: initial_user.id, pokemon_id: pokemon2.id)
