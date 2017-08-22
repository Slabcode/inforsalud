class SemesterStudent < ApplicationRecord
  belongs_to :carrer_student
  belongs_to :semester
  has_many :semester_student_subjects
  has_many :professor_subjects, through: :semester_student_subjects
  has_one  :payment
end
