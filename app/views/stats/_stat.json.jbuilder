json.extract! stat, :id, :player_id, :game_id, :mins_played, :points, :two_p_field_goals, :three_p_field_goals, :free_throws, :rebounds_off, :rebounds_def, :rebounds_total, :assists, :steals, :turnovers, :blocks_in_favor, :blocks_against, :fouls_commited, :fouls_received, :pir, :created_at, :updated_at
json.url stat_url(stat, format: :json)