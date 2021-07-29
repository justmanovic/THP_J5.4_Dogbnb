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


# city_zip = [["Paris","75000"],["Lyon","69000"],["Marseille","13000"],["Nice","06000"],["Bordeaux","33000"],["Strasbourg","67000"],["Rennes","35000"],["Toulouse","31000"],["Caen","14000"],"Toulon","83000"]

# 9.times do |i|
#     City.create(city_name: (city_zip[i][0]), zip_code: (city_zip[i][1]))
# end

20.times do |i|
    # Dog.create(name:Faker::Name.name, age:rand(1..10), city_id:rand(1..City.count))
    Dog.find(i+2).update(name:Faker::Name.first_name)
end
