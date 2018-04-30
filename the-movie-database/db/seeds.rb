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


films = [
  ['Pulp-fiction', 1994, 'Tarantino'],
  ['Gozilla', 1999, 'Mes couilles'],
  ['Drive', 2010, 'Pinto'],
  ['Rio', 2015, 'Pixar'],
  ['Sous le même toit', 2017, "Arthur"]
]

films.each do |arr|
  Movie.create(title: arr[0], release_year: arr[1], director: arr[2])
end

