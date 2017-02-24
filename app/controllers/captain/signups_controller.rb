class Captain::SignupsController < ApplicationController

  # allow captain to signup selected player
  def create
    player = Player.find(params[:id])
    @signup = player.signups.create(practice: current_practice)
    redirect_to practice_path(current_practice)
  end

  private

  helper_method :current_practice
  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

end
