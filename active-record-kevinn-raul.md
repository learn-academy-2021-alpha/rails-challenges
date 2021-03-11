As a developer, I have been tasked with creating and testing a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex'.

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'


Generate a Person model with a first_name, last_name, and phone. All fields should be strings.

- $ rails generate model Person name:string last_name:string phone:integer

Run a migration to set up the database.
Open up Rails console.
Actions

Add five family members into the Person table in the Rails console.
- $ Person.create name:'Joseph', last_name:'Li', phone:6191
- $ Person.create name:'Kevinn', last_name:'Li', phone:6192
- $ Person.create name:'Carlos', last_name:'Li', phone:6193
- $ Person.create name:'Eddie', last_name:'Li', phone:6194
- $ Person.create name:'Paul', last_name:'Li', phone:6195

Retrieve all the items in the database.
-$ pp Person.all 


Add yourself to the Person table.
- $ Person.create name:'Raul', last_name:'Verdejo', phone:6196

Retrieve all the entries that have the same last_name as you.
- $ Person.where last_name:'Verdejo'

Update the phone number of the last entry in the database.

- $ raul = Person.find 6
- $ raul.phone = 6197
- $ raul.save

Retrieve the first_name of the third Person in the database.
- $ Person.find(3).name


Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.
- $ li_family = Person.where last_name:"Li"
- $ li_family.update_all(phone: 1234)
- $ li_family.save

Remove all family members that do not have your last_name.

- $ not_fam = Person.where "last_name != 'Li'"
- $ not_fam.destroy_all

