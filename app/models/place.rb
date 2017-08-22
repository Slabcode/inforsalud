class Place < ApplicationRecord
  belongs_to :franchise
  belongs_to :professor_subject
end
