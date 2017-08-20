class SubjectTimetable < ApplicationRecord
  belongs_to :subject
  belongs_to :timetable
  has_many :professor_subjects
end
