class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :disease
  validates :appointment_date, presence: true
end
