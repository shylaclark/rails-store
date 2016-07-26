class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name, null: false
      t.text :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, unique: true
  end
end
