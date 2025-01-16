class PersonalTraining < ApplicationRecord
  belongs_to :client
  belongs_to :instructor
end
