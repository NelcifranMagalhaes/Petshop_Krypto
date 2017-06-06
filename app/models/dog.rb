class Dog < ApplicationRecord


	validates :breed, presence: true
	validates :genre ,presence: true
	validates :birthday ,presence: true
	validates :name ,presence: true
	validates :owner_name ,presence: true
	validates :owner_fone ,presence: true
	validates :last_date ,presence: true

	belongs_to :breed
end
