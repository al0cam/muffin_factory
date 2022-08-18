class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :surname
      t.string :password_digest
      t.string :email
      t.float :balance

      t.timestamps
    end
    add_index :users, :id, unique: true
  end
end
