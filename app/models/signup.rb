class Signup < ActiveRecord::Base
  belongs_to :player
  belongs_to :practice
  # belongs_to :match

  validates :player_id, :practice_id, length: { minimum: 1 }
end
