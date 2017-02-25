class Captain::SignupsController < ApplicationController

  # grab all players in database (populated from seed data)
  def new
    # @players = Player.all
    @player_options = Player.all.map{ |p| ["#{p.first_name} #{p.last_name}", p.id] }
    @practices = Practice.where(cancelled: false).order('date ASC')
    @signup = Signup.new
  end

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
