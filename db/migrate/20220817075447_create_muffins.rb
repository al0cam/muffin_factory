class CreateMuffins < ActiveRecord::Migration[7.0]
  def change
    create_table :muffins do |t|
      t.integer :id
      t.string :name
      t.float :price

      t.timestamps
    end
    add_index :muffins, :id, unique: true
  end
end
