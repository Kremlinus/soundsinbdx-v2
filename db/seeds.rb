# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(name: "Event1", description: "null", date: "2017-10-09 00:00:00", best: false, price: 3.99, slug: "event-1")
Event.create(name: "Event2", description: "null", date: "2017-10-10 00:00:00", best: false, price: 0, slug: "event-2")
