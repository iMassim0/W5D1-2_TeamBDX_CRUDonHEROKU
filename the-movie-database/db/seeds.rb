# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.all.each do |m|
  m.destroy
end

Director.all.each do |m|
  m.destroy
end

films = [
  ['Pulp-fiction', 1994],
  ['Gozilla', 1999],
  ['Drive', 2010],
  ['Rio', 2015],
  ['Sous le même toit', 2017]
]

directors = [
  ['Tarantino', 'Quentin'],
  ['kiki', 'lulu'],
  ['popo', 'cracra']
]

directors.each do |d|
  lol = Director.create(first_name: d[0], last_name: d[1])
  # puts lol.id
end

films.each do |arr|
  lol = Movie.create(title: arr[0], release_year: arr[1])
  # puts lol.id
end

tab = Director.all
j = 0

Movie.all.each do |m|
  m.director_id = tab[j].id
  j += 0.5
  m.save
end
