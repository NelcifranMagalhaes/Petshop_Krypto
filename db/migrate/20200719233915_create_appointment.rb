class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.integer :dog_id, foreign_key: true
      t.integer :disease_id, foreign_key: true
      t.text :description
    end
  end
end
