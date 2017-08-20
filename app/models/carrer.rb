class Carrer < ApplicationRecord
  has_many :semesters
  has_many :carrer_franchises
  has_many :franchises, through: :carrer_franchises
end
