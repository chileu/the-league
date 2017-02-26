class SignupsController < ApplicationController
  before_action :authenticate_player!

  def create
    # check if player is already signed up
    if selected_player.signed_up?(current_practice)
      flash[:alert] = "This player is already signed up for #{current_practice.date.strftime("%A %B %d")}"
      redirect_to new_captain_signup_path
    else
      @signup = selected_player.signups.create(practice: current_practice)
      if @signup.valid?
        redirect_to practice_path(current_practice)
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def cancel
    @signup = Signup.find(params[:id])
    @signup.destroy
    @signup.save
    flash[:alert] = "You are no longer signed up for practice on #{@signup.practice.date.strftime("%A, %B %d")}"
    redirect_to practices_path
  end

  private

  helper_method :current_practice, :selected_player
  def current_practice
    @current_practice = Practice.find(params[:practice_id])
  end

  def selected_player
    @selected_player = Player.find(params[:player_id])
  end

end
