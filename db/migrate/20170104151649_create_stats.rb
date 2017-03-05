class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :mins_played, default: 0
      t.integer :points, default: 0
      t.integer :two_p_field_goals, default: 0
      t.integer :three_p_field_goals, default: 0
      t.integer :free_throws, default: 0
      t.integer :rebounds_off, default: 0
      t.integer :rebounds_def, default: 0
      t.integer :rebounds_total, default: 0
      t.integer :assists, default: 0
      t.integer :steals, default: 0
      t.integer :turnovers, default: 0
      t.integer :blocks_in_favor, default: 0
      t.integer :blocks_against, default: 0
      t.integer :fouls_commited, default: 0
      t.integer :fouls_received, default: 0
      t.integer :pir, default: 0

      t.timestamps null: false
    end
  end
end
