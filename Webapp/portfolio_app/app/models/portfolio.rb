class Portfolio < ApplicationRecord
  #one-to-one connection to the Student
  belongs_to :student
end