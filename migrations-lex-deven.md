Rails new favorite_movie_app -d postgresql -T
$ cd favorite_movie_app
$ rails db:create
$ rails server

$New tab CD into app if not already

$rails g model Movie title:string genre:string

$rails db migrate before adding stuff

Challenges
1. Add five entries to the database via the Rails console

$Movie.create title:'' genre:'' * 5

$Exit rails c

2. Create a migration to add a new column to the database called movie_length

$rails g migration add_columns_to_list 
## Text editor we went to /rails-apps/favorite_movie_app/db/migrate/20210311190648_add_columns_to_list.rb
#added" 'add_column :movies, :movie_length, :integer' into `def change`
$rails db:migrate
<!-- To see table in PG Admin open PG Admin enter password then click server enter password again click on project, right click on project and click Query Tool -->

3. Update the values of the five existing attributes to include a movie_length value

#name variable
$ "moviename" = Movie.find 'number'
#change variable
"moviename".movie_length = 'number'
#update database
"moviename".save

$exit 


4. Generate a migration to rename the column 'category' to 'genre'

$rails g migration rename_genre_name
## Text editor we went to rails-apps/favorite_movie_app/db/migrate/20210311193654_rename_genre_name.rb
#added: 'rename_column(:movies, :genre , :catagory)' into into `def change`

$rails db:migrate