class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.integer :phone_number
      t.date :check_in
      t.date :check_out
      t.index :full_name

      t.timestamps
    end
  end
end
