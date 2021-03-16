As a developer, I have been tasked with creating and testing a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex'. (done)
Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
(done)

Generate a Person model with a first_name, last_name, and phone. All fields should be strings. (done)


Run a migration to set up the database. (done)

Open up Rails console. (done)

Actions

Add five family members into the Person table in the Rails console.
Retrieve all the items in the database. (done)
Add yourself to the Person table. (done)

Person.create first_name:'oats', last_name:'hilarionez'

<!-- Retrieve all the entries that have the same last_name as you. -->

 Person.where last_name:'hilario'

<!-- Update the phone number of the last entry in the database. -->
Person.last.create

<!-- Retrieve the first_name of the third Person in the database.

Stretch Challenges -->

<!-- Update all the family members with the same last_name as you, to have the same 
phone number as you. -->

Person.where last_name='hilario'
Person.update phone:
Person.save

<!-- Remove all family members that do not have your last_name. -->
Person.where last_name='hilario'
Person.destroy last_name
