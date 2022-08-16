require 'open-uri'

puts 'Cleaning database...'

Movie.destroy_all
User.destroy_all
Watchlist.destroy_all

severino = User.create!(name: 'Severino', email: 'sev@lewagon.com')
puts "User 'Severino' created"

puts 'Creating movie example...'

bacurau = Movie.new(
  title: 'Bacurau',
  year: 2019,
  duration: 131,
  location: 'Parelhas, Rio Grande do Norte',
  synopsis: "Bacurau, a small settlement in Brazil's remote backcountry, is shaken by the death of its elderly matriarch. But something strange is happening in the village, and there's little time for mourning. The water supply has been cut off, animals are stampeding through the streets, and empty coffins are turning up on the roadside. One morning, the villagers wake up to find their home has disappeared from satellite maps completely. Under threat from an unknown enemy, Bacurau braces itself for a bloody, brutal fight for survival.",
  genre: ["Adventure", "Horror", "Mystery"],
  user: severino
)
file = URI.open('https://res.cloudinary.com/daxtfj13g/image/upload/v1660610396/2l92x51r65x8zfevfec0z433efr2.jpg')
bacurau.poster.attach(io: file, filename: 'bacurau.jpg', content_type: 'image/jpg')
bacurau.save
puts "Movie '#{bacurau.title}' created"

puts 'Finished!'
