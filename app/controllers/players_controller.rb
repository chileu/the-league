class PlayersController < ApplicationController

  def index
    @players = Player.order('first_name ASC')
  end

end
