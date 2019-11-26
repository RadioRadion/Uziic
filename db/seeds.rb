require 'faker'

puts 'Creating 10 users...'
10.times do
  user = User.new(
    email: Faker::Internet.free_email,
    password: "azerty",
    name: Faker::FunnyName.two_word_name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
  )
  user.save!
end
puts 'Finished!'

U1=User.first
U2=User.last

puts 'Creating 50 songs...'
25.times do
  song = Song.new(
    tags: Faker::Music.genre,
    title: Faker::Music.chord,
    description: "Description",
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    duration: rand(60..5000),
    user_id: User.first.id
  )
  song.save!
end
25.times do
  song = Song.new(
    tags: Faker::Music.genre,
    title: Faker::Music.chord,
    description: "Description",
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    duration: rand(60..5000),
    user_id: User.last.id
  )
  song.save!
end
puts 'Finished!'
puts 'Creating 10 lists'
5.times do
  list = List.new(
    tags: Faker::Music.genre,
    name: Faker::Music.album,
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    user_id: User.first.id
  )
  list.save!
end
5.times do
  list = List.new(
    tags: Faker::Music.genre,
    name: Faker::Music.album,
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    user_id: User.last.id
  )
  list.save!
end
puts 'Finished!'
puts 'Creating 2 play-list'
  pl = ListSong.new(
    list_id: List.first.id,
    song_id: Song.first.id
  )
  pl.save!
  pl = ListSong.new(
    list_id: List.first.id,
    song_id: Song.last.id
  )
  pl.save!

  pl = ListSong.new(
    list_id: List.last.id,
    song_id: Song.first.id
  )
  pl.save!
  pl = ListSong.new(
    list_id: List.last.id,
    song_id: Song.last.id
  )
  pl.save!
puts 'Finished!'


