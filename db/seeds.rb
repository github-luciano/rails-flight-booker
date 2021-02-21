# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create(code: 'ABC')
Airport.create(code: 'DEF')
Airport.create(code: 'GHI')
Airport.create(code: 'JKL')
#Passenger.create(name: 'bob', surname: 'ross', email: 'bobross@email', billing: 123456789)
#Passenger.create(name: 'james', surname: 'tames', email: 'jamestames@email', billing: 789456132)
#Passenger.create(name: 'rolf', surname: 'adolf', email: 'rolfadolf@email', billing: 465798132)
#Passenger.create(name: 'taeha', surname: 'types', email: 'taehatypes@email', billing: 465217389)
#Passenger.create(name: 'nathan', surname: 'jonatan', email: 'nathanjonathan@email', billing: 465798132)
#Passenger.create(name: 'key', surname: 'caps', email: 'keycaps@email', billing: 321789654)
#Passenger.create(name: 'aloe', surname: 'vera', email: 'aloevera@email', billing: 987456123)
#Passenger.create(name: 'water', surname: 'bottle', email: 'waterbottle@email', billing: 654123798)
Flight.create(from_airport_id: 1, to_airport_id: 2, datetime: "20-1-2012".to_date, flight_duration: 60)
Flight.create(from_airport_id: 2, to_airport_id: 2, datetime: "15-5-2015".to_date, flight_duration: 90)
Flight.create(from_airport_id: 3, to_airport_id: 4, datetime: "14-7-2026".to_date, flight_duration: 70)
Flight.create(from_airport_id: 4, to_airport_id: 1, datetime: "3-3-2023".to_date, flight_duration: 40)
Flight.create(from_airport_id: 2, to_airport_id: 3, datetime: "28-9-2021".to_date, flight_duration: 80)

