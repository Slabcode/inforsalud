class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  belongs_to :franchise
  has_one :partner
  has_many :carrer_students
  has_many :carrer_working_days, through: :carrer_students
end
