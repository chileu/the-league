class MatchesController < ApplicationController
  before_action :authenticate_player!

  def index
    @matches = Match.order('date ASC')
  end
  
end
