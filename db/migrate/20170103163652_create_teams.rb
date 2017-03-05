class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :president
      t.string :coach
      t.string :stadium
      t.string :address
      t.string :phone
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4
      t.integer :player_5
      t.integer :player_6
      t.integer :player_7
      t.integer :player_8
      t.integer :player_9
      t.integer :player_10
      t.integer :player_11
      t.integer :player_12
      t.integer :player_13
      t.integer :player_14

      t.timestamps null: false
    end
  end
end
