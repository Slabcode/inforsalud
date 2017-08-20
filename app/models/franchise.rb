class Franchise < ApplicationRecord
  has_many :users
  has_many :carrer_franchises
  has_many :carrers, through: :carrer_franchises
  has_many :places
end
