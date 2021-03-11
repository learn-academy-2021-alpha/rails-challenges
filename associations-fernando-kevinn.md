Create a new rails application and database
- $ rails new bank-app -d postgresql -T
- $ rails db:create

Create a model for owner

- $ rails g model Owner name:string address:string


An owner has a name and address, and can have multiple credit cards
Create a model for credit card

- $ rails g model CreditCard number:bigint exp_date:string owner_id:integer

A credit card has a number, an expiration date, and an owner


Challenges
Create three owners and save them in the database
- $ Owner.create name: 'Frenando', address: '123 Fake st'
- $ Owner.create name: 'Kevinn', address: '321 False ave'
- $ Owner.create name: 'Mina', address: '789 Nunya blvd'


Create a credit card in the database for each owner
- $ fernando = Owner.first
- $ fernando.credit_cards.create number: 12345678945, exp_date: '01/29'
- $ kevinn = Owner.second 
- $ kevinn.credit_cards.create number: 98765432182, exp_date: '04/26'
- $ mina = Owner.third
- $ mina.credit_cards.create number: 65748392163, exp_date: '09/21'


Add two more credit cards to one of the owners
- $ mina.credit_cards.create number: 32184618372, exp_date: '04/21'
- $ mina.credit_cards.create number: 94836281630, exp_date: '07/28'


Stretch Challenge
Add a credit limit to each card
- $ credit_card = CreditCard.all
- $ credit_card.update_all(credit_limit:20000)

Find the total credit extended to the owner with multiple credit cards
- $ mina_credit_sum = CreditCard.where 'owner_id = 3'
- $ mina_credit_sum.sum(:credit_limit)

