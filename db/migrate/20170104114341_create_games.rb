class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :date
      t.string :time
      t.string :stadium
      t.integer :attendees
      t.integer :home_team
      t.integer :away_team
      t.integer :round
      t.integer :home_team_score
      t.integer :away_team_score
      t.integer :ht_q1
      t.integer :ht_q2
      t.integer :ht_q3
      t.integer :ht_q4
      t.integer :at_q1
      t.integer :at_q2
      t.integer :at_q3
      t.integer :at_q4
      t.string :referee

      t.timestamps null: false
    end
    add_foreign_key :games, :teams, column: :home_team, primary_key: :id
    add_foreign_key :games, :teams, column: :away_team, primary_key: :id
  end
end
