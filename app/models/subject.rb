class Subject < ApplicationRecord
  belongs_to :semester
  has_many :tests

  def self.load_subjects(**args)
    where(subjects:{
      semester_id: args[:semester]
      }).paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end

end
