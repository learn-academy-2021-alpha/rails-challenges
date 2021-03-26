rails new validations-eylse-angelo -d postgresql -T

cd validations-eylse-angelo

rails db:create

bundle add rspec-rails

rails g rspec:install

rails g model Account username:string password:string email:string

rails db:migrate

code . or atom .

on account.rb file(set validations)--- validates :username, :password, :email, presence: true

on spec file ---   it 'must have valid username, password, and email' do
    username1 = Account.create username:' '
    password1 = Account.create password:' '
    email1 = Account.create email:' '
    expect(username1.errors[:username]).to_not_be_empty
    expect(username1.errors[:username].first).to eq 'please provide a valid username'
    expect(password1.errors[:password1]).to_not_be_empty
    expect(password1.errors[:password1].first).to eq 'please provide a valid password'
    expect(email1.errors[:email1]).to_not_be_empty
    expect(email1.errors[:email1].first).to eq 'please provide a valid email'

back on account.rb file(finished setting validations)  class Account < ApplicationRecord
      validates :email, presence: true
      validates :username, uniqueness: true, length: { minimum: 5 }
      validates :password, uniqueness: true, length: { minimum: 6 }
    end

rails g model Address street_number:integer street_name:string city:string state:string zip:integer

rails db:migrate

(we forgot to add foreign key to parent) -- rails g migration AddForiegnKey account_id:integer

rails db:migrate

Address belongs_to :account

Account has_many :addresses

rails c -- created multiple accounts
            exit console
