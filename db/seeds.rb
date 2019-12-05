require 'faker'

puts 'Creating 16 users...'
8.times do
  user = User.new(
    email: Faker::Internet.free_email,
    password: "azerty",
    name: Faker::FunnyName.two_word_name,
    pseudo: Faker::Artist.name,
    address: "#{Faker::Address.street_address}, Bordeaux"
  )
  user.save!
  2.times do
    song = Song.new(
      tags: "Rock",
      title: Faker::Music.chord,
      description: "Description",
      post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
      duration: rand(60..5000)
    )
    song.user = user
    song.save!
  end
end

8.times do
  user = User.new(
    email: Faker::Internet.free_email,
    password: "azerty",
    name: Faker::FunnyName.two_word_name,
    pseudo: Faker::Artist.name,
    address: "#{Faker::Address.street_address}, Toulouse"
  )
  user.save!
  2.times do
  song = Song.new(
    tags: "Electro",
    title: Faker::Music.chord,
    description: "Description",
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    duration: rand(60..5000),
  )
  song.user = user
  song.save!
end

end
puts 'Finished users!'

puts 'Creating 4 lists'
2.times do
  list = List.new(
    tags: "Rock",
    name: Faker::Music.album,
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    user_id: User.first.id
  )
  list.save!
end
2.times do
  list = List.new(
    tags: "Electro",
    name: Faker::Music.album,
    post_at: Faker::Date.between(from: 1.year.ago, to: Date.today),
    user_id: User.second.id
  )
  list.save!
end
puts 'Finished lists!'
puts 'Completing 4 lists'

2.times do
  listsong = ListSong.new(
    list_id: 1,
    song_id: rand(1..16)
    )
  listsong.save!
end
2.times do
  listsong = ListSong.new(
    list_id: 2,
    song_id: rand(1..16)
    )
  listsong.save!
end
2.times do
  listsong = ListSong.new(
    list_id: 3,
    song_id: rand(17..32)
    )
  listsong.save!
end
2.times do
  listsong = ListSong.new(
    list_id: 4,
    song_id: rand(17..32)
    )
  listsong.save!
end
puts 'Finished lists!'
