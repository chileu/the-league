class Captain::MatchesController < ApplicationController
  before_action :authenticate_player!

  def new
    @match = Match.new
  end

  def create
    @match = Match.create(match_params)
    redirect_to matches_path
  end

private

def match_params
  params.require(:match).permit(:date, :time, :place, :home_or_away)
end


end
