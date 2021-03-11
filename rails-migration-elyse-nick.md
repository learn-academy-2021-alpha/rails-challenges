<!-- Setup
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute
Challenges
Add five entries to the database via the Rails console
Create a migration to add a new column to the database called movie_length
Update the values of the five existing attributes to include a movie_length value
Generate a migration to rename the column 'category' to 'genre' -->


rails g model Movie title:string category:string
rails db:migrate

rails c

Movie.create title:"Step Brothers", category:"comedy"
Movie.create title:"300", category:"action"
Movie.create title:"Robin Hood Men In Tights", category:"comedy"
Movie.create title:"Grandma's Boy", category:"comedy"
Movie.create title:"Django", category:"drama"

pp Movie.all

back in terminal
rails g migration AddMovieLengthToMovie

rails app migration file
def change
add_column :movies, :movie_length, :time
<!-- save file! -->

terminal
rails db:migrate

rails g migration RenameCategoryColumnName

rails app migration file
def change
rename_column :movies, :category, :genre
<!-- save file! -->

terminal
rails db:migrate

rails g migration ChangeMovieLengthColumns

def change
    change_table :movies do |t|
      t.remove :movie_length
      t.string :movie_time
    end

rails db:migrate 