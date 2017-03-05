class Team < ActiveRecord::Base

  has_many :stats, through: :games
  has_many :players, foreign_key: [:player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11, :player_12, :player_13, :player_14]
end
