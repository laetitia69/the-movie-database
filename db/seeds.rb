# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	
def list_movies
	
	Director.destroy_all
	@directors = Director.create([{first_name: "James", last_name: "DeMonaco"},
								  {first_name: "Corin", last_name: "Hardy"},
								  {first_name: "Jeff", last_name: "Wadlow"},
								  {first_name: "John", last_name: "Krasinski"}])

	d = Director.all

	d.each do |dir|
		
		Movie.destroy_all
		@movies = Movie.create([{title: "American nightmare 1", release_year: 2013, director_id: "#{dir.id}"},
								{title: "La nonne", release_year: 2018, director_id: "#{dir.id}"},
								{title: "Action ou vérité", release_year: 2018, director_id: "#{dir.id}"},
								{title: "Sans un bruit", release_year: 2018, director_id: "#{dir.id}"}])
	end

end
puts list_movies.inspect
