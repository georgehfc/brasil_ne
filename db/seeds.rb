require 'open-uri'

puts 'Cleaning database...'

Movie.destroy_all
User.destroy_all
Watchlist.destroy_all

user = User.create(name: 'Severino', email: 'sev@lewagon.com')
puts "'user' created"

puts 'Creating movies...'
@movies = [{ title: 'Bacurau',
             year: 2019,
             duration: 191,
             location: 'Parelhas, Rio Grande do Norte',
             synopsis: "Bacurau, a small settlement in Brazil's remote backcountry,
             is shaken by the death of its elderly matriarch. But something strange
             is happening in the village, and there's little time for mourning. The
             water supply has been cut off, animals are stampeding through the streets,
             and empty coffins are turning up on the roadside. One morning, the
             villagers wake up to find their home has disappeared from satellite
             maps completely. Under threat from an unknown enemy, Bacurau braces
             itself for a bloody, brutal fight for survival.",
             genre: ["Adventure", "Horror", "Movie"],
             image_url: '../app/assets/images/seeds/bacurau-poster.jpeg' }]
@movies.each do |movie|
  movie = Movie.new(movie)
  movie.save
  puts "Created #{movie.title}"
end

puts 'Finished!'
