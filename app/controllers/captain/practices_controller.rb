class Captain::PracticesController < ApplicationController
  before_action :authenticate_player!

  def new
    @practice = Practice.new
  end

  def create
    @practice = current_player.practices.create(practice_params)
    redirect_to practices_path
  end

  private

  def practice_params
    params.require(:practice).permit(:date, :time)
  end

end
