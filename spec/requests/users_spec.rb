require 'rails_helper'

RSpec.describe "Users", type: :request do

  before(:each) do 
    @user = User.create(first_name: "first", last_name: "last", email: "sivakumar3b8@gmail.com")
  end


  describe "GET /index" do
    it 'index action has status code 200' do 
      get 'users'
      expect(response).to_have_status(200)
    end
  end
end
