class Disease < ApplicationRecord
  has_many :appointments
  has_many :dogs, through: :appointments

  validates :name, presence: true
end
