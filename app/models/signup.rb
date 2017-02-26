class Signup < ActiveRecord::Base
  belongs_to :player
  belongs_to :practice
  # belongs_to :match

  validates :player_id, presence: true
end
