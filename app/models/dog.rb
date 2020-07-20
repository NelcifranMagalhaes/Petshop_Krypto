class Dog < ApplicationRecord
  validates :breed, presence: true
  validates :genre, presence: true
  validates :birthday, presence: true
  validates :name, presence: true
  validates :owner_name, presence: true
  validates :owner_fone, presence: true

  has_many :appointments
  has_many :diseases, through: :appointments
  belongs_to :breed # ,optional: true
end
