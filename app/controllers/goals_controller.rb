class GoalsController < ApplicationController
  def index
    @chris_goals = Goal.find_or_initialize_by(owner: "Chris")
    @jake_goals = Goal.find_or_initialize_by(owner: "Jake")
    @caleb_goals = Goal.find_or_initialize_by(owner: "Caleb")
    @jimmy_goals = Goal.find_or_initialize_by(owner: "Jimmy")
    @brycen_goals = Goal.find_or_initialize_by(owner: "Brycen")
  end

  def save_goal
    goal = Goal.find_or_initialize_by(owner: params[:owner])
    
    goal.update!(content: params[:goal])

    flash[:notice] = "#{goal.owner}'s goal was saved successfully!"
    redirect_to goals_path
  end
end