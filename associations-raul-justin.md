Setup
Create a new rails application and database (done)
Create a model for owner (done)
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner
(done)

rails g model owner name:string address:string
rails g model credit_card number:string expiration_date:datetime owner_id:integer
<!-- should make datetime a string -->
rails db:migrate

class CreditCard < ApplicationRecord
    belongs_to :owner
end

class Owner < ApplicationRecord
    has_many :credit_cards
end

pp CreditCard.all
pp Owner.all

Challenges

Create three owners and save them in the database
Create a credit card in the database for each owner

liz = Owner.first
liz.credit_cards.create number:'12345', expiration_date:DateTime.new(1,2,3)

Add two more credit cards to one of the owners

credit_cards number:string expiration_date:datetime owner:string

Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards