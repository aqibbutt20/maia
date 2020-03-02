require 'rails_helper'

RSpec.describe Client, type: :model do
  describe "Create Client" do
    let!(:client) {FactoryGirl.create(:client)}
    it 'saves the code' do  
      client.update(secret_key: 'www.test2.com')
      expect(client.secret_key).to eq 'www.test2.com'
    end
  end
end
