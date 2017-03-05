class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :height
      t.string :dob
      t.string :nationality
      t.string :position
      t.integer :p_number

      t.timestamps null: false
    end
  end
end
