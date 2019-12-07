require 'rails_helper'

RSpec.describe Customer, type: :model do

  let(:customer) { FactoryBot.create(:customer)}

  describe "Validations" do 
    it "must have a name" do 
      customer.name = ""
      expect(customer).not_to be_valid
    end

    it "must have a phone number" do 
       customer.phone = ""
       expect(customer).not_to be_valid
    end

    it "must have a correct phone number format" do 
       customer.phone = "123456789"
       expect(customer).to be_valid
    end
  
    it "must have an email address of correct format" do 
       customer.email = ""
       expect(customer).not_to be_valid
    end


  end

  describe "Graceful delete" do 
     it "changes customer count by -1" do 
       customer = FactoryBot.create(:customer)
       expect{customer.destroy}.to change(Customer,:count).by(-1)
     end
  end


end
