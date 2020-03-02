require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do

  describe "Create User" do

    context "Client not created" do
      it 'return error' do  
        post "/api/v1/users", params: {domain: 'www.test.com'}
        res = JSON.parse(response.body)
        expect(response.status).to eq 422
      end
    end

    context "Client created" do
      let!(:client) {FactoryGirl.create(:client)}
      it 'return error' do  
        post "/api/v1/users", params: {domain: client.secret_key, email: 'test@gmail.com'}
        res = JSON.parse(response.body)
        expect(response.status).to eq 200
      end
    end

  end
end
