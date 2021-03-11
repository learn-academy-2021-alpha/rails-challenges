# Banking Challenge

# Create a new rails application and database

# Create a model for owner
rails g model Owner name:string address:string

# Create a model for credit card
rails g model CreditCard number:string exp_date:string

into the class Owner --- has_many :credit_cards
into the class CreditCards --- belongs_to :owner

# Create three owners and save them in the database
Owner.create name:"Angelo", address:"San Diego, CA"
Owner.create name:"Stephanie", address:"Los Angeles, CA"
Owner.create name:"Myla", address:"Angelo's House, CA"

# Create a credit card in the database for each owner
angelo = Owner.first
angelo.credit_cards.create number:"9999999999", exp_date:"09/23/23"

steph = Owner.second
steph.credit_cards.create number:"4444444444", exp_date:"03/20/24"

myla = Owner.third
myla.credit_cards.create number:"2222222222", exp_date:"05/12/28"

# Add two more credit cards to one of the owners
myla.credit_cards.create number:"8888888888", exp_date:"01/08/25"
myla.credit_cards.create number:"5555555555", exp_date:"02/07/25"

# Stretch Challenge

# Add a credit limit to each card

rails g migration add_credit_limit
rails db:migrate
# Find the total credit extended to the owner with multiple credit cards