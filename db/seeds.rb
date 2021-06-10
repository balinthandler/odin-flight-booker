# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#airports = Airport.create([{ code: 'SFO'}, { code: 'NYC'}])

# flights = Flight.create([{ start_id: '7', finish_id: '8', start_datetime: "2021-07-05,12:20", flight_duration: "07:05" },
# { start_id: '7', finish_id: '8', start_datetime: "2021-07-06,07:10", flight_duration: "07:05" },

# ])

flights = Flight.create([
  { start_id: Airport.find_by(code: "SFO").id, finish_id: Airport.find_by(code: "NYC").id, departure_date: "2021-07-05", departure_time: "08:15", flight_duration: "07:05" },
  { start_id: Airport.find_by(code: "NYC").id, finish_id: Airport.find_by(code: "SFO").id, departure_date: "2021-07-06", departure_time: "05:45", flight_duration: "07:50" },
  { start_id: Airport.find_by(code: "NYC").id, finish_id: Airport.find_by(code: "SFO").id, departure_date: "2021-07-07", departure_time: "11:15", flight_duration: "06:05" },
  { start_id: Airport.find_by(code: "SFO").id, finish_id: Airport.find_by(code: "NYC").id, departure_date: "2021-07-08", departure_time: "17:05", flight_duration: "07:05" },
  { start_id: Airport.find_by(code: "NYC").id, finish_id: Airport.find_by(code: "SFO").id, departure_date: "2021-07-09", departure_time: "18:15", flight_duration: "08:05" },
  { start_id: Airport.find_by(code: "SFO").id, finish_id: Airport.find_by(code: "NYC").id, departure_date: "2021-07-10", departure_time: "20:55", flight_duration: "07:35" },
  { start_id: Airport.find_by(code: "NYC").id, finish_id: Airport.find_by(code: "SFO").id, departure_date: "2021-07-11", departure_time: "10:45", flight_duration: "07:45" },
  { start_id: Airport.find_by(code: "SFO").id, finish_id: Airport.find_by(code: "NYC").id, departure_date: "2021-07-12", departure_time: "12:05", flight_duration: "11:05" },
  { start_id: Airport.find_by(code: "NYC").id, finish_id: Airport.find_by(code: "SFO").id, departure_date: "2021-07-13", departure_time: "13:35", flight_duration: "07:25" },
  { start_id: Airport.find_by(code: "SFO").id, finish_id: Airport.find_by(code: "NYC").id, departure_date: "2021-07-14", departure_time: "14:25", flight_duration: "07:15" },
])