Setup
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute
rails generate Movie model title:string category:string 

(done)

Challenges
<!-- Add five entries to the database via the Rails console -->
Movie.create title:"akira", category:"anime"
(done)

<!-- Create a migration to add a new column to the database called movie_length -->
class AddLengthToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :movie_length, :string
  end
end
 rails db:migrate
 (done)

<!-- Update the values of the five existing attributes to include a  -->
Movie.find 1
scream = Movie.find 1
scream.movie_length = 2
scream.save

<!-- Generate a migration to rename the column 'category' to 'genre' -->
lass RenameCategoryToGenre < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :category, :genre 
  end
end
rails db:migrate