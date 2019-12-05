require 'rails_helper'

RSpec.describe "Movies", type: :request do

  describe "GET /movies" do
    before(:all) { get movies_path }

    it "returns a response with http status of success" do
      expect(response).to have_http_status(:success)
    end

    it "returns a response with JSON content type" do 
      expect(response.content_type).to eq('application/json')
    end

    it "returns all movies in the Movie database" do 
       expect((JSON.parse(response.body)).size).to eq(Movie.count)
    end

  end
end
