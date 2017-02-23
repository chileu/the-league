class PracticesController < ApplicationController

  def index
    @practices = Practice.order('date ASC')
  end

  def show
  end

end
