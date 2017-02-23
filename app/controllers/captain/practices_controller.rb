class Captain::PracticesController < ApplicationController
  before_action :authenticate_player!

  def new
    @practice = Practice.new
  end

  def create
    @practice = Practice.create(practice_params)
    redirect_to practices_path
  end

  def cancel
    @practice = Practice.find(params[:id])
    @practice.cancelled = true
    @practice.signups.each do |signup|
      signup.cancelled = true
      signup.save
    end
    @practice.save
    redirect_to practices_path
  end

  private

  def practice_params
    params.require(:practice).permit(:date, :time)
  end

end
