class PracticesController < ApplicationController
  before_action :authenticate_player!

  def index
    @practices = Practice.order('date ASC')
  end

  def show
  end

end
