<!-- Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner  -- DONE


Challenges
Create three owners and save them in the database -->



rails db:create
rails g model Owner name:string address:string
rails g model CreditCard card_number:bigint exp_date:date owner_id:integer

rails db:migrate

class Owner < ApplicationRecord
  has_many :credit_cards
end

class CreditCard < ApplicationRecord
  belongs_to :owner
end

rails c   

Owner.create name:'Steve Fischer', address:'1234 La Brea, San Diego 92000'
Owner.create name:'John Doe', address:'1234 Prospect, San Diego 92000'
Owner.create name:'Sarah Smith', address:'1234 Fountain Dr., San Diego 92000'

<!-- Create a credit card in the database for each owner
Add two more credit cards to one of the owners
Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards -->

steve = Owner.first
steve.credit_cards.create card_number:123444444455, exp_date:20210101

john=Owner.second
john.credit_cards.create card_number:123444444567, exp_date:20220101

sarah=Owner.third
sarah.credit_cards.create card_number:321444444567, exp_date:20220505

sarah.credit_cards.create card_number:321444894567, exp_date:20240501

sarah.credit_cards.create card_number:321764444567, exp_date:20230508
