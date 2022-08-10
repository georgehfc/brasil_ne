require 'open-uri'

puts 'Cleaning database...'

Movie.destroy_all
User.destroy_all
Watchlist.destroy_all

severino = User.create!(name: 'Severino', email: 'sev@lewagon.com')
puts "user 'Severino' created"

puts 'Creating movies...'
@movies = [{ title: 'Bacurau',
             year: 2019,
             duration: 131,
             location: 'Parelhas, Rio Grande do Norte',
             synopsis: "Bacurau, a small settlement in Brazil's remote backcountry, is shaken by the death of its elderly matriarch. But something strange is happening in the village, and there's little time for mourning. The water supply has been cut off, animals are stampeding through the streets, and empty coffins are turning up on the roadside. One morning, the villagers wake up to find their home has disappeared from satellite maps completely. Under threat from an unknown enemy, Bacurau braces itself for a bloody, brutal fight for survival.",
             genre: ["Adventure", "Horror", "Movie"],
             image_url: 'https://m.media-amazon.com/images/M/MV5BNTQwMDI4OWMtOWY3Mi00YzlmLTgzOTctOWI5NjY4ZGM0MTAzXkEyXkFqcGdeQXVyNDEyNjEzOTg@._V1_.jpg',
             user: severino },
             { title: "A Dog's Will",
               year: 2000,
               duration: 104,
               location: 'Cabaceiras, Paraíba',
               synopsis: "João Grilo and Chicó are two very poor and clever Brazilian Northeasterners who struggle for survival and trick people to get by. After meeting the wealthy Rosinha, both hope to finally strive in life, but their plans are interrupted by the arrival of an outlaw.",
               genre: ["Comedy", "Drama", "Fantasy"],
               image_url: 'https://m.media-amazon.com/images/M/MV5BYjc1N2M1YjMtYzBiNi00NGFiLThkN2QtY2EwZGU5MDRkODAzXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_.jpg',
               user: severino }]
@movies.each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

puts 'Finished!'
