class SignupsController < ApplicationController
  before_action :authenticate_player!

  def create
    @signup = current_player.signups.create(practice: current_practice)
    redirect_to practices_path
  end

  def cancel
  end

  private

  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

end
