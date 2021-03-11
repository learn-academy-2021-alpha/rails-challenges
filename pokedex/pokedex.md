<!-- Create rails app -->

$ rails new pokedex -d postgresql -T
$ cd pokedex
$ rails db:create
$ rails server


<!-- Create Active Record model -->
$ rails generate model Pokemon species:string trainer:string region:string number:integer

<!-- Migrate Database -->
$ rails db:migrate

<!-- Enter Rails environment -->
$ rails c

<!-- Add five family members into the Person table in the Rails console. -->
<!-- Create new Pokemon -->
Pokemon.create species: 'Mewtwo', trainer: 'Giovanni', region: 'Kanto', number: 150
Pokemon.create species: 'Pikachu', trainer: 'Ash', region: 'Kanto', number: 25
Pokemon.create species: 'Togepi', trainer: 'Misty', region: 'Johto', number: 175
Pokemon.create species: 'Geodude', trainer: 'Brock', region: 'Kanto', number: 74
Pokemon.create species: 'Blastoise', trainer: 'Giovanni', region: 'Kanto', number: 9


<!-- Retrieve all the items in the database. -->
pp Pokemon.all

<!-- Add yourself to the Person table. -->
Pokemon.create species: 'Eevee', trainer: 'Deven', region: 'Kanto', number: 132
Pokemon.create species: 'Snorlax', trainer: 'Allen', region: 'Kanto', number: 143

<!-- Retrieve all the entries that have the same last_name as you -->
pp Pokemon.where region: 'Kanto'
pp Pokemon.where "number > 100"

<!-- Update the phone number of the last entry in the database -->
snorlax = Pokemon.find 7
snorlax.trainer = 'Joni'
snorlax.save

<!-- Retrieve the first_name of the third Person in the database. -->
pp Pokemon.find(3).species


<!-- Update all the family members with the same last_name as you, to have the same phone number as you. -->
<!-- Update the trainer to be Team Rocket if the Pokemon is in Kanto -->
<!-- WHERE to get all the Kanto Pokemon -->

trainers = Pokemon.where(region: 'Kanto')
trainers.update(trainer: 'Team Rocket')
<!-- NOTE: no need to do a .save -->


<!-- Remove all family members that do not have your last_name. -->
<!-- Delete all the Pokemon whose trainer is 'Team Rocket' -->
trainers.destroy_all