class CarrerFranchise < ApplicationRecord
  belongs_to :franchise
  belongs_to :carrer
  has_many :carrer_working_days
  has_many :working_days, through: :carrer_working_days

  def self.add(carrer,franchise)
    a = self.new(carrer_id: carrer,franchise_id: franchise)
    a.save
  end

  def self.remove(carrer,franchise)
    a = find_by_carrer_id_and_franchise_id(carrer,franchise)
    if(a)
      a.destroy
    end
  end

end
