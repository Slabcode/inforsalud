class Timetable < ApplicationRecord
  belongs_to :working_day
  has_many :subject_timetables
  has_many :subjects, through: :subject_timetables
end
