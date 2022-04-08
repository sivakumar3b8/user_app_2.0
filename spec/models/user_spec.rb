require 'rails_helper'

RSpec.describe User, type: :model do

  context "validation test" do

    it 'ensure  first_name presences true' do 
      user = User.new(last_name: "last", email: "sample@gmail.com").save
      expect(user).to eq(false)
    end

    it 'ensure  last_name presences true' do 
      user = User.new(first_name: "last", email: "sample@gmail.com").save
      expect(user).to eq(false)
    end

    it 'ensure  email presences true' do 
      user = User.new(last_name: "last", first_name: "last").save
      expect(user).to eq(false)
    end

    it 'should save successfully' do 
      user = User.new(last_name: "last", first_name: "last",  email: "sample@gmail.com").save
      expect(user).to eq(true)
    end

  end

end
