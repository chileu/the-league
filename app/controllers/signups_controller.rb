class SignupsController < ApplicationController
  before_action :authenticate_player!

  def create
    @signup = Signup.create(signup_params)
  end

  def cancel
  end  

end
