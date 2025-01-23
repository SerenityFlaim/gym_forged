class Instructor < ApplicationRecord
  validates :fullname, presence: true, format: {
    with: /\A([A-Za-zА-Яа-я]+(?: [A-Za-zА-Яа-я]+){1,2})\z/, 
    message: "must be two or three words without numbers" 
 }
end
