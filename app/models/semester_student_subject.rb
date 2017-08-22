class SemesterStudentSubject < ApplicationRecord
  belongs_to :professor_subject
  belongs_to :semester_student
  has_many :scopes
  has_many :grades
end
