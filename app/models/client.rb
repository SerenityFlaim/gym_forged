class Client < ApplicationRecord
  validates :phone, presence: true, format: { 
    with: /\A(?:\+7|8)[\s-]?(?:\(?\d{3}\)?[\s-]?)\d{3}[\s-]?\d{2}[\s-]?\d{2}\z/, 
    message: "must be a valid phone number (10-15 digits, can include a leading '+')" 
  }

  validates :email, presence: true, format: { 
    with: /\A[\w+_.\-]+@[a-zA-Z.\-]+\.[a-zA-Z]{2,}\z/, 
    message: "must be a valid email address" 
  }
end