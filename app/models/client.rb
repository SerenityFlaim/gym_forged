class Client < ApplicationRecord
  has_many :personal_trainings
  validates :phone, presence: true, uniqueness: true, format: { 
    with: /\A(?:\+7|8)[\s-]?(?:\(?\d{3}\)?[\s-]?)\d{3}[\s-]?\d{2}[\s-]?\d{2}\z/,
    message: "must be a valid phone number (10-15 digits, can include a leading '+')" 
  }

  validates :email, presence: true, uniqueness: true, format: { 
    with: /\A[\w+_.\-]+@[a-zA-Z.\-]+\.[a-zA-Z]{2,}\z/,
    message: "must be a valid email address" 
  }

  validates :fullname, presence: true, uniqueness: true, format: {
     with: /\A([A-Za-zА-Яа-я]+(?: [A-Za-zА-Яа-я]+){1,2})\z/, 
     message: "must be two or three words without numbers" 
  }
end