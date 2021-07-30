# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Dog.create(name:'milou',age:3)
# Dogsitter.create(name:'tintin')

# Stroll.create(date:'2021-07-21',dog_id:1,dogsitter_id:1)

City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
Dog.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogs'")
Dogsitter.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogsitters'")
Stroll.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'strolls'")


city_zip = [["Paris","75000"],["Lyon","69000"],["Marseille","13000"],["Nice","06000"],["Bordeaux","33000"],["Strasbourg","67000"],["Rennes","35000"],["Toulouse","31000"],["Caen","14000"],["Toulon","83000"]]

10.times do |i|
  City.create(city_name: (city_zip[i][0]), zip_code: (city_zip[i][1]))
end


10.times do
  Dogsitter.create(name:Faker::Name.name, city_id:rand(1..City.count))
end

10.times do
  Dog.create(name:Faker::Name.name.split[-1], age:rand(1..10), city_id:rand(1..City.count))
end

10.times do
  Stroll.create(date:Faker::Time.between(from: "2014-09-19", to: DateTime.now), dog_id:rand(1..Dog.count), dogsitter_id:rand(1..Dogsitter.count), city_id:rand(1..City.count))
end