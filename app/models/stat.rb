class Stat < ActiveRecord::Base

  has_attached_file :file
  validates_attachment_content_type :file, content_type: 'text/plain'
  validates_presence_of :player_id
  validates_presence_of :game_id

  belongs_to :player, foreign_key: [:player_id]
  belongs_to :game, foreign_key: [:game_id]
end
