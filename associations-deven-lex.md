##Banking Challenge##
<!-- Setup
Create a new rails application and database

Create a model for owner

An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner -->
--Added 'belongs_to :owner' to /rails-apps/banking/app/models/credit_card.rb
--Added 'has_many :credit_cards' to /rails-apps/banking/app/models/owner.rb
$ rails db:migrate
$ rails c

#Challenges#
1. Create three owners and save them in the database

$ Owner.create name:'Bill Gates', address:'123 Microsoft Way'
$ Owner.create name:'Richard Branson', address:'1600 Virgin Ave'
$ Owner.create name:'Alice Walton', address:'456 Wally World'

2. Create a credit card in the database for each owner

$ bg = Owner.first
$ bg.credit_cards.create number:12345, expiration_date:'01/01/22'
$ rb = Owner.second
$ rb.credit_cards.create number:67890, expiration_date:'02/02/23'
$ aw = Owner.third
$ aw.credit_cards.create number:13579, expiration_date:'03/03/24'

3. Add two more credit cards to one of the owners

$ bg.credit_cards.create number:24680, expiration_date:'05/05/15'
$ bg.credit_cards.create number:98765, expiration_date:'06/06/95'

#Stretch Challenges#
1. Add a credit limit to each card

$ exit
$ rails g migration AddTotalCreditToCards

--Added 'add_column :credit_cards, :total_credit, :integer' to /rails-apps/banking/db/migrate/20210311225905_add_total_credit_to_cards.rb

$ rails db:migrate
$ rails c

$ cc1 = CreditCard.find 1
$ cc1.total_credit = 34897
$ cc1.save

$ cc2 = CreditCard.find 3
$ cc2.total_credit = 23478
$ cc2.save

$ cc3 = CreditCard.find 4
$ cc3.total_credit = 89237
$ cc3.save

$ cc4 = CreditCard.find 5
$ cc4.total_credit = 36549
$ cc4.save

$ cc5 = CreditCard.find 6
$ cc5.total_credit = 12364
$ cc5.save

2. Find the total credit extended to the owner with multiple credit cards

$ sum_total_credit = CreditCard.where('owner_id = 1').sum(:total_credit)
$ sum_total_credit => 83810
