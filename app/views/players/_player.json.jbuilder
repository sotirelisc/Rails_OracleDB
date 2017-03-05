json.extract! player, :id, :name, :height, :dob, :nationality, :position, :p_number, :created_at, :updated_at
json.url player_url(player, format: :json)