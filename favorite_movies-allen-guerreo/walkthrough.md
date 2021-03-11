<!-- Setup -->
<!-- Create a new Rails application called 'favorite_movies'. -->
rails new favorite_movies -d postgresql -T
cd favorite_movies
<!-- Create the database -->
rails db:create
rails server
<!-- Generate a Movie model with a title attribute and a category attribute -->
rails generate model Movie title:string category:string
rails db:migrate

<!-- Challenges -->
<!-- Add five entries to the database via the Rails console -->
Movie.create title: 'Back to the Future', category: 'Science Fiction'
Movie.create title: '(500) Days of Summer', category: 'Comedy'
Movie.create title: 'Eternal Sunshine of the Spotless Mind', category: 'Romance'
Movie.create title: 'The Prestige', category: 'Drama'
Movie.create title: 'Shawshank Redemption', category: 'Drama'

<!-- Create a migration to add a new column to the database called movie_length -->
rails generate migration add_movie_length_column
<!-- In the .rb file: -->
add_column :movies, :movie_length, :string
<!-- In the terminal -->
rails db:migrate
<!-- If in Rails environment already, exit -->
exit
<!-- Start new Rails environment -->
rails c

<!-- Update the values of the five existing attributes to include a movie_length value -->
bttf = Movie.find 1
bttf.movie_length = '116 min'
bttf.save

days = Movie.find 2
days.movie_length = '97 min'
days.save

eternal_sunshine = Movie.find 3
eternal_sunshine.movie_length = '108 min'
eternal_sunshine.save

prestige = Movie.find 4
prestige.movie_length = '130 min'
prestige.save

shawshank = Movie.find 5
shawshank.movie_length = '142 min'
shawshank.save

<!-- Generate a migration to rename the column 'category' to 'genre' -->
<!-- Run in regular terminal -->
rails g migration rename_genre_column_name

<!-- Open .rb file and add -->
rename_column :movies, :category, :genre

<!-- Do another Rails migrate -->
rails db:migrate

<!-- If Rails environment already running, exit -->
exit
<!-- Start new Rails environment -->
rails c