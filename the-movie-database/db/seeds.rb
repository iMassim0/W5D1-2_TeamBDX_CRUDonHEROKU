# Remet à zéro toutes les entrées de la db précédement créées
# Pour pouvoir remmetre à zéro les propres id aux movies et directors, effectuer un
# $ rails db:reset

Movie.destroy_all
Director.destroy_all

# Choix de nos films

films = [
  ['Seul sur Mars', 2015],
  ['Django', 2013],
  ['Pulp Fiction', 1994],
  ['La Grande Vadrouille', 1966],
  ['La Soupe aux Choux', 1981]
]

# Réalisateurs associés

directors = [
  ['Ridley', 'SCOTT'],
  ['Quentin', 'TARANTINO'],
  ['Gérard', 'OURY'],
  ['Jean', 'GIRAULT']
]

# Relations entre les films et les réalisateurs

relations = [
  1, 2, 2, 3, 4
]

# Création de toutes les occurences "directors"

directors.each do |director|
  Director.create(first_name: director[0], last_name: director[1])
end

# Création de toutes les occurences "movies"

films.each do |film|
  Movie.create(title: film[0], release_year: film[1])
end

# Permet la relation entre les "movies" et "directors"

i = 1

relations.each do |relation|
  temp_movie = Movie.find(i)
  temp_director = Director.find(relation)
  temp_movie.director_id = temp_director.id
  i += 1
  temp_movie.save
end
