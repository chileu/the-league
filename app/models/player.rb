class Player < ActiveRecord::Base
  has_many :signups
  has_many :practices

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def signed_up?(practice)
    signed_up_practices = []
    signups.each do |signup|
      signed_up_practices << signup.practice
    end
    return signed_up_practices.include?(practice)
  end

end
