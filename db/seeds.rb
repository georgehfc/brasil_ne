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
             genre: ["Adventure", "Horror", "Mystery"],
             image_url: 'https://m.media-amazon.com/images/M/MV5BYjc1N2M1YjMtYzBiNi00NGFiLThkN2QtY2EwZGU5MDRkODAzXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_.jpg',
             user: severino },
           { title: "A Dog's Will",
             year: 2000,
             duration: 104,
             location: 'Cabaceiras, Paraíba',
             synopsis: "João Grilo and Chicó are two very poor and clever Brazilian Northeasterners who struggle for survival and trick people to get by. After meeting the wealthy Rosinha, both hope to finally strive in life, but their plans are interrupted by the arrival of an outlaw.",
             genre: ["Comedy", "Drama", "Fantasy"],
             image_url: 'https://m.media-amazon.com/images/M/MV5BNTQwMDI4OWMtOWY3Mi00YzlmLTgzOTctOWI5NjY4ZGM0MTAzXkEyXkFqcGdeQXVyNDEyNjEzOTg@._V1_.jpg',
             user: severino },
           { title: 'Black God, White Devil',
             year: 1964,
             duration: 120,
             location: 'Canudos, Bahia',
             synopsis: "Fictionalized account of the adventures of hired gunman Antonio das Mortes, set against the real life last days of rural banditism. The movie follows Antonio as he witnesses the descent of common rural worker Manuel into a life of crime, joining the gang of Antonio's sworn enemy, Corisco the Blond Devil (Othon Bastos), and the Pedra Bonita Massacre.",
             genre: ["Adventure", "Crime", "Drama"],
             image_url: 'https://d3swacfcujrr1g.cloudfront.net/img/uploads/2016/04/Deus_e_o_diabo_cartaz.jpg',
             user: severino },
           { title: 'Ó Pai, Ó: Look at This',
             year: 2007,
             duration: 96,
             location: 'Salvador, Bahia',
             synopsis: "During the Carnival in the historical site of Pelourinho (Salvador, Bahia, Brazil), we follow the lives of the tenants of a falling-to-pieces tenement house who try to get by using creativity, irony, humor and music.",
             genre: ["Comedy", "Musical"],
             image_url: 'https://mb.web.sapo.io/7b8cbc8de29e3984dbb676caad83e59e98f1543a.jpg',
             user: severino }]
@movies.each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

puts 'Finished!'
