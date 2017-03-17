class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :genre
      t.string :castrated
      t.boolean :
      t.date :birthday
      t.string :name
      t.string :owner_name
      t.string :owner_fone
      t.date :last_date

      t.timestamps
    end
  end
end
