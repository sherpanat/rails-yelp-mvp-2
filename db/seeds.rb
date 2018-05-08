# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

names = ["Coluche", "Samoussa", "Padang", "Kebaba", "Paul", "Mie Câline"]
addresses = ["Bordeaux", "Paris", "Lyon", "Genève", "Lille", "Marseille"]
num = ["06..", "07..", "08..", "01..", "02..", "03.."]

for i in [*0..5]
  Restaurant.create(name: names[i], address: addresses[i], phone_number: num[i], category: CATEGORIES[rand(0..4)])
end
