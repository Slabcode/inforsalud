class Franchise < ApplicationRecord
  has_many :users
  has_many :carrer_franchises
  has_many :carrers, through: :carrer_franchises
  has_many :places

  def self.load_franchises(**args)
    paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end

end
