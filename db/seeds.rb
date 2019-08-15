# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

40.times do
  Game.create(
    # Random Game Title
    title: Faker::Game.title, #=> "Half-Life"

    # Random Game Genre
    genre: Faker::Game.genre, #=> "First-person shooter"

    # Random Game Platform
    platform: Faker::Game.platform #=> "Nintendo DS"
  )
end
