class Instructor < ApplicationRecord
  has_many :personal_trainings
  validates :fullname, presence: true, uniqueness: true, format: {
    with: /\A([A-Za-zА-Яа-я]+(?: [A-Za-zА-Яа-я]+){1,2})\z/, 
    message: "must be two or three words without numbers" 
 }
end
