class ProfessorSubject < ApplicationRecord
  belongs_to :subject_timetable
  belongs_to :professor
  has_many :semester_student_subjects
  has_many :semester_students, through: :semester_student_subjects
  has_one :place
end
