class HomeController < ApplicationController
  def index
  end

  def passkey
    @character_name = params[:character_name]
  end
  
  def submit_passkey
    user = User.find_by(first_name: params[:character_name])
    if user.passkey == params[:passkey]
      session[:character_name] = params[:character_name]
      redirect_to goals_path
    else
      flash[:error] = "The entered passkey is incorrect!"
      redirect_to passkey_path
    end
  end
end
