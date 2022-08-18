class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
    add_index :roles, :id, unique: true
  end
end
