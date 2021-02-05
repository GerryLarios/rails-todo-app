user = User.find(1)

music_list = List.create!(name: 'Recomended Music Bands', user: user)
movie_list = List.create!(name: 'Movies to see', user: user)
book_list = List.create!(name: 'Books I want to read', user: user)

x = 0

while x < 20
  music_task = Task.create!(title: Faker::Music.unique.band, list: music_list)
  puts "MUSIC TASK CREATED #{music_task.title}"
  movie_task = Task.create!(title: Faker::Movie.unique.title, list: movie_list)
  puts "MOVIE TASK CREATED #{movie_task.title}"
  book_task = Task.create!(title: Faker::Game.unique.title, list: book_list)
  puts "BOOK TASK CREATED #{book_task.title}"
  puts '====================================='
  x += 1
end
