class CarrerStudent < ApplicationRecord
  belongs_to :carrer_working_day
  belongs_to :user
  has_many :semester_students
end
