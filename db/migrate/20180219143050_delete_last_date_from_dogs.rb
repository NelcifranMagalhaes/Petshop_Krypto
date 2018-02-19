class DeleteLastDateFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :last_date, :date
  end
end
