class CarrerFranchise < ApplicationRecord
  belongs_to :franchise
  belongs_to :carrer
  has_many :carrer_working_days
  has_many :working_days, through: :carrer_working_days
end
