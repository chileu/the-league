class SignupsController < ApplicationController
  before_action :authenticate_player!

  def create
    @signup = current_player.signups.create(practice: current_practice)
    redirect_to practices_path
  end

  def cancel
    @signup = Signup.find(params[:id])
    @signup.destroy
    @signup.save
    flash[:notice] = "You have cancelled your sign-up for practice on #{@signup.practice.date.strftime("%A, %B %d")}"
    redirect_to practices_path
  end

  private

  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

end
