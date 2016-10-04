# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
model=Faker::Name.first_name
year=Faker::Number.between(1900, 2016)
  price=Faker::Number.between(500, 10000)
 description=Faker::Lorem.sentences
  color=Faker::Color.color_name
  use=Faker::Lorem.sentence(3)
  Car.create(model:model,year:year,description:description, color:color,price:price,use:use)
end