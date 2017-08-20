class WorkingDay < ApplicationRecord
  has_many :carrer_working_days
  has_many :timetables
  has_many :carrer_franchises, through: :carrer_working_days
end
