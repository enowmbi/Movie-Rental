class Customer < ApplicationRecord
  has_many :rental

  VALID_PHONE_NUMBER = /\d[0-9]\)*\z/
  VALID_EMAIL_ADDRESS =/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :name, presence: true
  
  validates :phone, presence: true, format: { with: VALID_PHONE_NUMBER,
    message: "only positive numbers without spaces are allowed" }

  validates :email, presence: true,uniqueness: true,format: {with: VALID_EMAIL_ADDRESS,
             message: "only valid email addresses allowed"}

end
