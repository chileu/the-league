class SignupsController < ApplicationController
  before_action :authenticate_player!

  def create
    @signup = current_player.signups.create(practice: current_practice)
    redirect_to practice_path(current_practice)
  end

  def cancel
    @signup = Signup.find(params[:id])
    @signup.destroy
    @signup.save
    flash[:alert] = "You are no longer signed up for practice on #{@signup.practice.date.strftime("%A, %B %d")}"
    redirect_to practices_path
  end

  private

  helper_method :current_practice
  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

end
