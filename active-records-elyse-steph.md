# Set Up

# Create a new Rails app named 'rolodex'.
# Create the database. The output in the terminal should look like this:
# Created database 'rolodex_development'
# Created database 'rolodex_test'

# Generate a Person model with a first_name, last_name, and phone. All fields should be strings.
$ rails g model Dog first_name:string last_name:string phone:string

# Run a migration to set up the database.
$ rails db:migrate

# Open up Rails console.
$ rails c 

# Actions

# Add five family members into the Person table in the Rails console.
Person.create first_name:"Stephanie", last_name:"Begle", phone:"6196523452"

Person.create first_name:"Elyse", last_name:"Montano", phone:"8582438432"

Person.create first_name:"Emily", last_name:"Smith", phone:"9092432132"

Person.create first_name:"Jesse", last_name:"Johnson", phone:"8002772132"

Person.create first_name:"Sarah", last_name:"Johnson", phone:"7652987132"

# Retrieve all the items in the database.
pp Person.all

# Add yourself to the Person table.

# Retrieve all the entries that have the same last_name as you.
pp Person.where last_name:"Johnson"

# Update the phone number of the last entry in the database.
last_person = Person.last
last_person.phone = "2124567654"
last_person.save
pp Person.last or pp last_person

# Retrieve the first_name of the third Person in the database.
third_person = Person.find 3
third_person.first_name