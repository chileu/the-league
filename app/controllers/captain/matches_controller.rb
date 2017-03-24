class Captain::MatchesController < ApplicationController
  before_action :authenticate_player!

  def new
    @match = Match.new
  end

  def create
    @match = Match.create(match_params)
    if @match.valid?
      redirect_to matches_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

def match_params
  params.require(:match).permit(:date, :time, :place, :home_or_away, :opponent)
end


end
