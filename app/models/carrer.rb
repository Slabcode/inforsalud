class Carrer < ApplicationRecord
  has_many :semesters
  has_many :carrer_franchises
  has_many :franchises, through: :carrer_franchises

  def self.load_carrers(**args)
    paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end

  def self.by_franchise(**args)
    joins(:carrer_franchises).where(
      carrer_franchises:{
        franchise_id: args[:id]
      }
    ).paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end
end
