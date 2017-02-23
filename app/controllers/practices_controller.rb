class PracticesController < ApplicationController
  before_action :authenticate_player!

  def index
    @practices = Practice.order('date ASC')
  end

  def show
    @practice = Practice.find(params[:id])
  end

  helper_method :current_practice
  def current_practice
    @current_practice = Practice.find(params[:id])
  end

end
