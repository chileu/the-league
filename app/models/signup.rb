class Signup < ActiveRecord::Base
  belongs_to :player
  belongs_to :practice
  # belongs_to :match

end
