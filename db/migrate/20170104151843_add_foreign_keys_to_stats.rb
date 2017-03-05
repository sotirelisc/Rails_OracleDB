class AddForeignKeysToStats < ActiveRecord::Migration
  def change
    add_foreign_key :stats, :players, column: :player_id, primary_key: :id
    add_foreign_key :stats, :games, column: :game_id, primary_key: :id
  end
end
