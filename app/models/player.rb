class Player < ActiveRecord::Base
  has_many :signups
  has_many :practices
  has_many :signed_up_practices, through: :signups, source: :practice
  # can call Player.last.signed_up_practices. Source refers to the belongs_to association in signups,
  # which should correspond to practice (we want to access the practices)
  before_destroy :destroy_practice_signups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def signed_up?(practice)
    # signed_up_practices = signups.collect(:&practice)
    return signed_up_practices.include?(practice)
  end

  # delete signups associated with Player if Player is destroyed
  def destroy_practice_signups
    self.signups.delete_all
  end

end
