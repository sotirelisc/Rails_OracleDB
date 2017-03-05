class AddForeignKeysToTeams < ActiveRecord::Migration
  def change

    add_foreign_key :teams, :players, column: :player_1, primary_key: :id
    add_foreign_key :teams, :players, column: :player_2, primary_key: :id
    add_foreign_key :teams, :players, column: :player_3, primary_key: :id
    add_foreign_key :teams, :players, column: :player_4, primary_key: :id
    add_foreign_key :teams, :players, column: :player_5, primary_key: :id
    add_foreign_key :teams, :players, column: :player_6, primary_key: :id
    add_foreign_key :teams, :players, column: :player_7, primary_key: :id
    add_foreign_key :teams, :players, column: :player_8, primary_key: :id
    add_foreign_key :teams, :players, column: :player_9, primary_key: :id
    add_foreign_key :teams, :players, column: :player_10, primary_key: :id
    add_foreign_key :teams, :players, column: :player_11, primary_key: :id
    add_foreign_key :teams, :players, column: :player_12, primary_key: :id
    add_foreign_key :teams, :players, column: :player_13, primary_key: :id
    add_foreign_key :teams, :players, column: :player_14, primary_key: :id


  end
end
