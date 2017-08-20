class Subject < ApplicationRecord
  belongs_to :semester
  has_many :tests
end
