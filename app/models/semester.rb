class Semester < ApplicationRecord
  belongs_to :carrer
  has_many :subjects
end
