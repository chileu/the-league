class Practice < ActiveRecord::Base
  has_many :signups
  has_many :players, through: :signups
end
