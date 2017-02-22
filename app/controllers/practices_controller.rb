class PracticesController < ApplicationController

  def index
    @practices = Practice.all
  end

  def show
  end

end
