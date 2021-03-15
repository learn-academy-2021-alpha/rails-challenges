Stories for Account:


<!-- As a developer, I need to generate a model called Account that has a username, a password, and an email. -->
 rails g model Account username:string password:string email:string

<!-- As a developer, I need username, password, and email to be required. -->

class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
end

RSpec.describe Account, type: :model do
   it 'must have username' do
     justin = Account.create username:' '
     expect(justin.errors[:username]).to_not be_empty
   end
  it 'must have password' do
     pass = Account.create password:' '
      expect(pass.errors[:password]).to_not be_empty
  end
  it 'must have email' do
      mail = Account.create email:' '
     expect(mail.errors[:email]).to_not be_empty
  end
end

<!-- As a developer, I need every username to be at least 5 characters long. -->

validates :password, length: { minimum: 5 }

<!-- As a developer, I need each username to be unique. -->
validates :username, uniqueness: true

<!-- As a developer, I need each password to be at least 6 characters long. -->

validates :password, length: { minimum: 6 }

<!-- As a developer, I need each password to be unique. -->

validates :password, uniqueness: true

Stories for Address:
<!-- As a developer, I want my Account model to have many associated Addresses.
As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. -->

rails g model Address street_number:string street_name:string city:string state:string zip:string account_id:integer

<!-- As a developer, I want to validate the presence of all fields on Address. -->

require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'has a street number' do
    number = Address.create street_number:' '
    expect(number.errors[:street_number]).to_not be_empty
  end
  it 'has a street name' do
    name = Address.create street_name:' '
    expect(name.errors[:street_name]).to_not be_empty
  end
  it 'has a city' do
    place = Address.create city:' '
    expect(place.errors[:city]).to_not be_empty
  end
  it 'has a state' do
    cali = Address.create state:' '
    expect(cali.errors[:state]).to_not be_empty
  end
  it 'has a zip' do
    code = Address.create zip:' '
    expect(code.errors[:zip]).to_not be_empty
  end
  it 'has a id' do
    id = Address.create account_id:' '
    expect(id.errors[:account_id]).to_not be_empty
  end

end

Stretch Challenges
Implementing Custom Validations :

<!-- As a developer, I need each Account password to have at least one number. -->
account_spec.rb
  validate :password_has_number, on: :create

    def password_has_number
        if password.present? && password =~ /^[0-9a-zA-Z]*$/
         #regex for letters and digits
          errors.add(:password, 'does not have a number')
        end
    end
    
account.rb ->
    it 'password must have number' do
    number = Account.create password:'qjdh123456789'
    expect(number.errors[:password]).to_not be_empty
     end

<!-- As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account. Hint: Read about :scope in the Rails validation docs. -->
address_spec.rb
it 'street number must be unique' do
    number_street = Address.create account_id:' '
    expect(number_street.errors[:account_id]).to_not be_empty
  end
  it 'street address must be unique' do
    address_street = Address.create account_id:' '
    expect(address_street.errors[:account_id]).to_not be_empty
  end
  it 'zip must be unique' do
    address_zip = Address.create account_id:' '
    expect(address_zip.errors[:account_id]).to_not be_empty
  end

address.rb
validates :account_id, uniqueness: { scope: :street_number, message: 'should have one street number' }
    validates :account_id, uniqueness: { scope: :street_name, message: 'should have one street name'}
    validates :account_id, uniqueness: { scope: :zip, message: 'should have one zip' }

<!-- As a developer, I want to validate that the Address street_number and zip are numbers. Hint: Read about Numericality in the Rails validation docs. -->

validates :street_number, numericality: { only_integer: true }
    validates :zip, numericality: { only_integer: true }


As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers. Hint: Read about message in the Rails validation docs.

As a developer, I want to validate associated addresses on accounts. Hint: Read about validates_associated in the Rails validation docs.