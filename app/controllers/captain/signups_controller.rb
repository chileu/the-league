class Captain::SignupsController < ApplicationController

  # grab all players in database (populated from seed data)
  def new
    @player_options = Player.all.order('first_name ASC').map{ |p| ["#{p.first_name} #{p.last_name}", p.id] }
    @practice_options = Practice.where(cancelled: false).order('date ASC').map{ |p| [p.date.strftime("%A %B %d"), p.id] }
  end
  
  private

  helper_method :current_practice, :selected_player

  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

  def selected_player
    @selected_player = Player.find(params[:player_id])
  end

end
