# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

silence_of_the_lambs = Movie.new({title: "Silence of the Lambs", year: 1991, plot: "Clarice pairs up with a serial killer to hunt Buffalo Bill"})
silence_of_the_lambs.save


