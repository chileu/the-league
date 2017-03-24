class Match < ActiveRecord::Base
  has_many :players
  validates :date, :time, :place, :home_or_away, :opponent, presence: true

end
