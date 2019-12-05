class Movie < ApplicationRecord
  belongs_to :genre

  validates :title, presence: true
  validates :number_in_stock, numericality: true
  validates :daily_rental_rate, numericality: true

end
