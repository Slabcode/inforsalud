class Semester < ApplicationRecord
  belongs_to :carrer
  has_many :subjects

  def self.load_semesters(**args)
    where(semesters:{
        carrer_id: args[:carrer]
        }).paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end
end
