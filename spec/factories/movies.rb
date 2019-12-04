FactoryBot.define do
  factory :movie do
    title { "The place" }
    genre
    number_in_stock { 1 }
    daily_rental_rate { 1.5 }
  end
end
