class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.integer :id
      t.string :name
      t.float :price
      t.float :measurement_unit

      t.timestamps
    end
    add_index :ingredients, :id, unique: true
  end
end
