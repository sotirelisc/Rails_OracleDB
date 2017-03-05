class Player < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "240x240>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  belongs_to :team
  has_many :stats
end
