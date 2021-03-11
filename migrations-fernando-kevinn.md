Last login: Wed Mar 10 15:14:50 on ttys001
learnacademy@LEARNs-MacBook-Air favorite_movies % rails g model Movie title:string cat:string
Running via Spring preloader in process 6579
      invoke  active_record
      create    db/migrate/20210311182556_create_movies.rb
      create    app/models/movie.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20210311182556 CreateMovies: migrating =====================================
-- create_table(:movies)
   -> 0.0379s
== 20210311182556 CreateMovies: migrated (0.0381s) ============================

3.0.0 :001 > Movie.create title: 'The Goonies', cat:'Adventure'
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (32.0ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "The Goonies"], ["cat", "Adventure"], ["created_at", "2021-03-11 18:30:57.302322"], ["updated_at", "2021-03-11 18:30:57.302322"]]
  TRANSACTION (4.0ms)  COMMIT


 => #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +0000", updated_at: "2021-03-11 18:30:57.302322000 +0000"> 
3.0.0 :002 > Movie.create title: 'The Fifth Element', cat:'Syfy'
  TRANSACTION (17.3ms)  BEGIN
  Movie Create (2.1ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "The Fifth Element"], ["cat", "Syfy"], ["created_at", "2021-03-11 18:32:22.821523"], ["updated_at", "2021-03-11 18:32:22.821523"]]
  TRANSACTION (0.7ms)  COMMIT

 => #<Movie id: 2, title: "The Fifth Element", cat: "Syfy", created_at: "2021-03-11 18:32:22.821523000 +0000", updated_at: "2021-03-11 18:32:22.821523000 +0000"> 
3.0.0 :003 > Movie.create title: 'lucky Number Slevin', cat:'Murder Mistery'
  TRANSACTION (0.5ms)  BEGIN
  Movie Create (2.0ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "lucky Number Slevin"], ["cat", "Murder Mistery"], ["created_at", "2021-03-11 18:33:08.803026"], ["updated_at", "2021-03-11 18:33:08.803026"]]
  TRANSACTION (1.5ms)  COMMIT


 => #<Movie id: 3, title: "lucky Number Slevin", cat: "Murder Mistery", created_at: "2021-03-11 18:33:08.803026000 +0000", updated_at: "2021-03-11 18:33:08.803026000 +0000"> 
3.0.0 :004 > Movie.create title: 'Small Soldiers', cat:'Action'
  TRANSACTION (0.3ms)  BEGIN
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Small Soldiers"], ["cat", "Action"], ["created_at", "2021-03-11 18:33:38.290767"], ["updated_at", "2021-03-11 18:33:38.290767"]]
  TRANSACTION (1.8ms)  COMMIT


 => #<Movie id: 4, title: "Small Soldiers", cat: "Action", created_at: "2021-03-11 18:33:38.290767000 +0000", updated_at: "2021-03-11 18:33:38.290767000 +0000"> 
3.0.0 :005 > Movie.create title: 'Dune', cat:'Syfy'
  TRANSACTION (23.0ms)  BEGIN
  Movie Create (0.4ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Dune"], ["cat", "Syfy"], ["created_at", "2021-03-11 18:34:08.861678"], ["updated_at", "2021-03-11 18:34:08.861678"]]
  TRANSACTION (4.7ms)  COMMIT


 => #<Movie id: 5, title: "Dune", cat: "Syfy", created_at: "2021-03-11 18:34:08.861678000 +0000", updated_at: "2021-03-11 18:34:08.861678000 +0000"> 
3.0.0 :006 > Movie.create title: 'Shrek', cat:'Comedy'
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (4.9ms)  INSERT INTO "movies" ("title", "cat", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Shrek"], ["cat", "Comedy"], ["created_at", "2021-03-11 18:34:48.687064"], ["updated_at", "2021-03-11 18:34:48.687064"]]
  TRANSACTION (0.9ms)  COMMIT
 => #<Movie id: 6, title: "Shrek", cat: "Comedy", created_at: "2021-03-11 18:34:48.687064000 +0000", updated_at: "2021-03-11 18:34:48.687064000 +0000"> 
3.0.0 :011 > exit


learnacademy@LEARNs-MacBook-Air favorite_movies % rails g migration AddMovieLengthToMovie    
Running via Spring preloader in process 7003
      invoke  active_record
      create    db/migrate/20210311184523_add_movie_length_to_movie.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20210311184523 AddMovieLengthToMovie: migrating ============================
-- add_column(:movies, :movie_length, :time)
   -> 0.0346s
== 20210311184523 AddMovieLengthToMovie: migrated (0.0348s) ===================



learnacademy@LEARNs-MacBook-Air favorite_movies % rails c
Running via Spring preloader in process 7122
Loading development environment (Rails 6.1.3)
3.0.0 :001 > goonies = Movie.find 1
  Movie Load (0.9ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +... 
3.0.0 :002 > goonies.movie_length = '1:45'
 => "1:45" 
3.0.0 :003 > goonies.all
Traceback (most recent call last):
        1: from (irb):3:in `<main>'
NoMethodError (undefined method `all' for #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +0000", updated_at: "2021-03-11 18:30:57.302322000 +0000", movie_length: "2000-01-01 01:45:00.000000000 +0000">)
3.0.0 :004 > exit




learnacademy@LEARNs-MacBook-Air favorite_movies % rails g migration ChangeMovieLengthDataTypeToString
Running via Spring preloader in process 7260
      invoke  active_record
      create    db/migrate/20210311190453_change_movie_length_data_type_to_string.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20210311190453 ChangeMovieLengthDataTypeToString: migrating ================
-- change_table(:movies)
   -> 0.0432s
== 20210311190453 ChangeMovieLengthDataTypeToString: migrated (0.0434s) =======




learnacademy@LEARNs-MacBook-Air favorite_movies % goonies.all
zsh: command not found: goonies.all
learnacademy@LEARNs-MacBook-Air favorite_movies % rails c
Running via Spring preloader in process 7324
Loading development environment (Rails 6.1.3)
3.0.0 :001 > goonies.all
Traceback (most recent call last):
        1: from (irb):1:in `<main>'
NameError (undefined local variable or method `goonies' for main:Object)
3.0.0 :002 > goonies = Movies.find 1
Traceback (most recent call last):
        2: from (irb):1:in `<main>'
        1: from (irb):2:in `rescue in <main>'
NameError (uninitialized constant Movies)
3.0.0 :003 > Movies.all
Traceback (most recent call last):
        2: from (irb):2:in `<main>'
        1: from (irb):3:in `rescue in <main>'
NameError (uninitialized constant Movies)
3.0.0 :004 > Movie.all
  Movie Load (1.0ms)  SELECT "movies".* FROM "movies" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +0000", updated_at: "2021-03-11 18:30:57.302322000 +0000", movie_length: nil>, #<Movie id: 2, title: "The Fifth Element", cat: "Syfy", created_at: "2021-03-11 18:32:22.821523000 +0000", updated_at: "2021-03-11 18:32:22.821523000 +0000", movie_length: nil>, #<Movie id: 3, title: "lucky Number Slevin", cat: "Murder Mistery", created_at: "2021-03-11 18:33:08.803026000 +0000", updated_at: "2021-03-11 18:33:08.803026000 +0000", movie_length: nil>, #<Movie id: 4, title: "Small Soldiers", cat: "Action", created_at: "2021-03-11 18:33:38.290767000 +0000", updated_at: "2021-03-11 18:33:38.290767000 +0000", movie_length: nil>, #<Movie id: 5, title: "Dune", cat: "Syfy", created_at: "2021-03-11 18:34:08.861678000 +0000", updated_at: "2021-03-11 18:34:08.861678000 +0000", movie_length: nil>, #<Movie id: 6, title: "Shrek", cat: "Comedy", created_at: "2021-03-11 18:34:48.687064000 +0000", updated_at: "2021-03-11 18:34:48.687064000 +0000", movie_length: nil>]> 


 
3.0.0 :005 > goonies= Movie.find 1
  Movie Load (0.5ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +... 
3.0.0 :006 > goonies.all
Traceback (most recent call last):
        1: from (irb):6:in `<main>'
NoMethodError (undefined method `all' for #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +0000", updated_at: "2021-03-11 18:30:57.302322000 +0000", movie_length: nil>)

3.0.0 :011 > goonies.movie_length= "1h54m"
Traceback (most recent call last):
        2: from (irb):9:in `<main>'
        1: from (irb):10:in `rescue in <main>'
NoMethodError (undefined method `movie_lenght=' for #<Movie id: 1, title: "The Goonies", cat: "Adventure", created_at: "2021-03-11 18:30:57.302322000 +0000", updated_at: "2021-03-11 18:30:57.302322000 +0000", movie_length: "1h54m">)
Did you mean?  movie_length=
               movie_length
               movie_length?


3.0.0 :012 > goonies.save
  TRANSACTION (19.3ms)  BEGIN
  Movie Update (8.7ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:12:13.866906"], ["movie_length", "1h54m"], ["id", 1]]
  TRANSACTION (5.4ms)  COMMIT
 => true 


3.0.0 :013 > fifth= Movie.find 2
  Movie Load (2.5ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => #<Movie id: 2, title: "The Fifth Element", cat: "Syfy", created_at: "2021-03-11 18:32:22.821523000 ... 

3.0.0 :014 > fifth.movie_length = "2h6m"
 => "2h6m" 

3.0.0 :015 > fifth.save
  TRANSACTION (6.6ms)  BEGIN
  Movie Update (27.0ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:13:48.197666"], ["movie_length", "2h6m"], ["id", 2]]
  TRANSACTION (0.7ms)  COMMIT
 => true 



3.0.0 :016 > lucky= Movie.find 3
  Movie Load (1.0ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => #<Movie id: 3, title: "lucky Number Slevin", cat: "Murder Mistery", created_at: "2021-03-11 18:33:0... 

3.0.0 :017 > lucky.movie_length= "1h50m"
 => "1h50m" 

3.0.0 :018 > lucky.save
  TRANSACTION (9.3ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:14:47.020789"], ["movie_length", "1h50m"], ["id", 3]]
  TRANSACTION (0.9ms)  COMMIT
 => true 



3.0.0 :019 > small_soldiers = Movie.find 4
  Movie Load (19.9ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => #<Movie id: 4, title: "Small Soldiers", cat: "Action", created_at: "2021-03-11 18:33:38.290767000 +... 

3.0.0 :020 > small_soldiers.movie_length = "1h50m"
 => "1h50m" 

3.0.0 :021 > small_soldiers.save
  TRANSACTION (11.7ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:16:03.615267"], ["movie_length", "1h50m"], ["id", 4]]
  TRANSACTION (0.8ms)  COMMIT
 => true 



3.0.0 :022 > dune = Movie.find 5
  Movie Load (5.2ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
 => #<Movie id: 5, title: "Dune", cat: "Syfy", created_at: "2021-03-11 18:34:08.861678000 +0000", updat... 

3.0.0 :023 > dune.movie_length = "2h17m"
 => "2h17m" 

3.0.0 :024 > dune.save
  TRANSACTION (1.1ms)  BEGIN
  Movie Update (2.1ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:17:34.832740"], ["movie_length", "2h17m"], ["id", 5]]
  TRANSACTION (0.8ms)  COMMIT
 => true 



3.0.0 :025 > shrek = Movie.find 6
  Movie Load (20.4ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 => #<Movie id: 6, title: "Shrek", cat: "Comedy", created_at: "2021-03-11 18:34:48.687064000 +0000", up... 

3.0.0 :026 > shrek.movie_length = "1h30m"
 => "1h30m" 

3.0.0 :027 > shrek.save
  TRANSACTION (0.2ms)  BEGIN
  Movie Update (25.1ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-03-11 19:18:13.995458"], ["movie_length", "1h30m"], ["id", 6]]
  TRANSACTION (0.8ms)  COMMIT
 => true 
3.0.0 :028 > exit


learnacademy@LEARNs-MacBook-Air favorite_movies % rails g migration RenameCatColumnName 
Running via Spring preloader in process 7454
      invoke  active_record
      create    db/migrate/20210311192134_rename_cat_column_name.rb
learnacademy@LEARNs-MacBook-Air favorite_movies % rails db:migrate
== 20210311192134 RenameCatColumnName: migrating ==============================
-- rename_column(:movies, :cat, :genre)
   -> 0.0293s
== 20210311192134 RenameCatColumnName: migrated (0.0295s) =====================

learnacademy@LEARNs-MacBook-Air favorite_movies % 
