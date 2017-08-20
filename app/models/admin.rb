class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :authy_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  validates_presence_of :name,:lastname,:username,:email
  validates_uniqueness_of :username
  validates_length_of :username, minimum: 6
  validates_length_of :name, :lastname, in: 3..50

  def self.load_admins(args)
    all.paginate(page: args[:page] || 1, per_page: args[:per_page] || 10)
  end

end
