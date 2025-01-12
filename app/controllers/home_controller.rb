class HomeController < ApplicationController
  def index
  end

  def passkey
    @character_name = params[:character_name]
  end
  
  def submit_passkey
    session[:character_name] = params[:character_name]
    session[:passkey] = params[:passkey]
    redirect_to goals_path
  end
end
