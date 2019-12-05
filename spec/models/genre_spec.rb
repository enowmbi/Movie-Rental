require 'rails_helper'

RSpec.describe Genre, type: :model do
  let(:genre) { FactoryBot.create(:genre)}


  describe "Validations" do

    it "must have a name" do
      genre.name = ""
      expect(genre).not_to be_valid
    end

    it "must have a description" do
      genre.description = ""
      expect(genre).not_to be_valid
    end

  end

  describe "Associations" do 

    it "has many movies" do
      # genre = FactoryBot.create(:genre)

      3.times.each do |n|
        movie = FactoryBot.create(:movie)
        genre.movies << movie
        genre_movies = genre.movies
        expect(genre_movies.count).to eq n.next
        expect(genre_movies).to include movie
      end 
    end
  end

  describe "Graceful Destroyal" do 
    it "deletes associated movies when deleted" do 
      movie = FactoryBot.create(:movie, genre: genre)
      expect{genre.destroy}.to change(Movie,:count).by(-1)
    end

  end
end
