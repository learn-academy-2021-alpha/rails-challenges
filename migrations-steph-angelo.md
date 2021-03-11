rails new favorite_movies -d postrgesql -T

cd into favorite_movies

rails db:create

rails generate model Movies title:string category:string

rails c

Movie.create title:'titanic', category:'non-fiction'

Movie.create title:'superbad', category:'comedy'

Movie.create title:'no escape', category:'thriller'

Movie.create title:'the hangover', category:'comedy'

Movie.create title:'mystic river', category:'thriller'

exit(out of console)

rails g migration add_movie_length

rails db:migrate

In the editor, under the add_movie_length schema---- add_column(:movies, :movie_length, :sting)

rails db:migrate (if that doesnt migrate use rails db:drop -> rails db:create -> rails db:migrate)

rails g migration rename_category_column

In the editor, under the rename_category_column---- rename_column :movies, :category, :genre

rails db:migrate

rails c to re add the movies because they were deleted with the rails db:drop

Movie.create title:'titanic', genre:'non-fiction'

Movie.create title:'superbad', genre:'comedy'

Movie.create title:'no escape', genre:'thriller'

Movie.create title:'the hangover', genre:'comedy'

Movie.create title:'mystic river', genre:'thriller'

pp Movie.all (to see all the info)

exit to stop
