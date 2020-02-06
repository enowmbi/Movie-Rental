FactoryBot.define do
  factory :rental do
    movie
    customer
    checkout_date { "2019-12-07" }
    return_date { "2019-12-27" }
    rental_fee { 1.5 }
  end
end
