require 'rails_helper'

RSpec.describe "Genres", type: :request do

  describe "GET /genres" do
    before(:all){ get genres_path }

    it "returns a response with http status of success" do
      expect(response).to have_http_status(:success)
    end

    it "returns a response with JSON content type" do 
      expect(response.content_type).to eq('application/json')
    end

    it "returns all the genres in the database" do 
      expect((JSON.parse(response.body)).size).to eq(Genre.count)
    end

  end
end
