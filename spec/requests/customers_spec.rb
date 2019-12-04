require 'rails_helper'

RSpec.describe "Customers", type: :request do 

  describe "GET/customers" do 
    before(:all){ get customers_path }

    it "returns a response with http status of success" do
      expect(response).to have_http_status(:success)       
    end


    it "returns a response with JSON content type" do 
      expect(response.content_type).to eq('application/json')
    end

    it "returns all the customers in the database" do
      expect((JSON.parse(response.body)).size).to eq(Customer.count)
    end


  end


end
