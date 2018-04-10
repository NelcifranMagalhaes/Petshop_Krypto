class AddSlugToBreeds < ActiveRecord::Migration[5.1]
  def change
  	add_column :breeds, :slug, :string, unique: true

  end
end
