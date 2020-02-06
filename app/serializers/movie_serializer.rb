class MovieSerializer < ActiveModel::Serializer
  cache key: 'movie', expires_in: 3.hours
  attributes :id, :title, :number_in_stock, :daily_rental_rate

  belongs_to :genre
end
