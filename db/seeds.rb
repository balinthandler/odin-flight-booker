# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ code: 'SFO'}, { code: 'NYC'}])

flights = Flight.create([{ start_id: '7', finish_id: '8', start_datetime: "2021-07-05,12:20", flight_duration: "07:05" },
{ start_id: '7', finish_id: '8', start_datetime: "2021-07-06,07:10", flight_duration: "07:05" },

])