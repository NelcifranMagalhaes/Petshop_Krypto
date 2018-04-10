class Breed < ApplicationRecord
	extend FriendlyId
	attr_accessor :slug

	validates :name, presence: true
	friendly_id :id, use: :slugged

end
