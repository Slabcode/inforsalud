class Grade < ApplicationRecord
  belongs_to :semester_student_subject
  has_many :sub_grades
end
