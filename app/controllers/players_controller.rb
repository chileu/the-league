class PlayersController < ApplicationController
  before_action :authenticate_player!

  def index
    @players = Player.order('first_name ASC')
  end

  def show
    @player = Player.find(params[:id])
  end

end
