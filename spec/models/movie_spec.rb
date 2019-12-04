require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie){ FactoryBot.create(:movie) }

  describe "Validations" do 

    it "must have a title" do 
      movie.title =""
      expect(movie).not_to be_valid
    end

    it "must have a number_in_stock" do 
      movie.number_in_stock =""
      expect(movie).not_to be_valid
    end

    it "number_in_stock must be a numerical value" do 
      movie.number_in_stock = "fifty"
      expect(movie).not_to be_valid
    end

    it "must have daily_rental_rate " do 
      movie.daily_rental_rate =""
      expect(movie).not_to be_valid
    end

    it "daily_rental_rate must be a decimal value" do 
      movie.daily_rental_rate ="four point five"
      expect(movie).not_to be_valid
    end

  end


  describe "Associations" do 
    it "belongs to a genre" do 
      genre = FactoryBot.create(:genre)
      movie = FactoryBot.build(:movie, genre: genre)
      expect(movie.genre).to eq genre
    end

  end

  describe "Graceful Deletion" do 
    it "reduces movie count by 1" do 
      movie = FactoryBot.create(:movie)
      expect{movie.destroy}.to change(Movie,:count).by(-1)
    end

  end

end
