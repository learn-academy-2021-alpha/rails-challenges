bundle add rspec-rails
rails g rspec:install

<!-- As a developer, I need to generate a model called Account that has a username, a password, and an email. -->

rails g model Account username:string password:string email:string
rails db:migrate

<!-- As a developer, I need username, password, and email to be required. -->

account.rb
class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
end

account_spec.rb
RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create username: 'Kevinn', password: 'password1', email: 'kevinn@gmail.com'
    expect(account).to be_valid
  end
end

<!-- As a developer, I need every username to be at least 5 characters long. -->

class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: {minimum: 5}
end

it 'username has to be at least 5 characters long' do
    account = Account.create username: 'Kev', password: 'password1', email: 'kevinn@gmail.com'
    expect(account.errors[:username]).to_not be_empty
end

<!-- As a developer, I need each username to be unique. -->

class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: {minimum: 5}, uniqueness: true
end

it 'username has to be unique' do
    account = Account.create username: 'Kevinn', password: 'password1', email: 'kevinn@gmail.com'
    account1 = Account.create username: 'Kevinn', password: 'password1', email: 'kevinn@gmail.com'
    expect(account1.errors[:username]).to_not be_empty
  end

  <!-- As a developer, I need each password to be at least 6 characters long. -->

  class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: {minimum: 5}, uniqueness: true
    validates :password, length: {minimum: 6}
end

  it 'password has to be at least 6 characters long' do
    account = Account.create username: 'Kevinn2', password: 'passs', email: 'kevinn@gmail.com'
    expect(account.errors[:password]).to_not be_empty
  end

  <!-- As a developer, I need each password to be unique. -->

  class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: {minimum: 5}, uniqueness: true
    validates :password, length: {minimum: 6}, uniqueness: true
end

it 'password has to be unique' do
    account = Account.create username: 'Kevinn2', password: 'password2', email: 'kevinn@gmail.com'
    account1 = Account.create username: 'Kevinn1', password: 'password2', email: 'kevinn@gmail.com'
    expect(account1.errors[:password]).to_not be_empty
  end