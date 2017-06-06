class AddBelongsToDogs < ActiveRecord::Migration[5.0]
  def change

    add_column :dogs, :breed_id, :integer


  end
end
