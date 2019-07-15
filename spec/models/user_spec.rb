require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:password_confirmation) }     
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should have_secure_password }
  it { should validate_length_of(:password).is_at_least(6) } 

  describe '.authenticate_with_credentials' do

    it 'should return nil if user enters wrong email' do
      user = User.create(
        name: 'ABC',
        email: 'random@123.com',
        password: '1234567',
        password_confirmation: '1234567'
      )
      test_user = User.authenticate_with_credentials('123@random.com', '1234567')
      expect(test_user).to be_nil
    end

    it 'should return nil if user enters wrong password' do
      user = User.create(
        name: 'ABC',
        email: 'abc@abc.com',
        password: '1234567',
        password_confirmation: '1234567'
      )
      test_user = User.authenticate_with_credentials('abc@abc.com', '5678')
      expect(test_user).to be_nil
    end

    it 'should return a user if visitor uses extra spaces & random case' do
      user = User.create(
        name: 'ABC',
        email: 'abc@abc.com',
        password: '1234567',
        password_confirmation: '1234567'
      )
      test_user = User.authenticate_with_credentials('  abC@aBc.Com  ', '1234567')
      expect(test_user).to be_a User
    end

  end  

end
