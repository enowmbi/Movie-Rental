class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :rental

  validates :title, presence: true
  validates :number_in_stock, numericality: true
  validates :daily_rental_rate, numericality: true

end
