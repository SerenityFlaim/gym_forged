class Instructor < ApplicationRecord
  validates :fullname, presence: true, format: {
    with: /\A([A-Za-z]+(?: [A-Za-z]+){1,2})\z/, 
    message: "must be two or three words without numbers" 
 }
end
