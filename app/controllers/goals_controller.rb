class GoalsController < ApplicationController
  def index
    names = ["Chris", "Jake", "Caleb", "Jimmy", "Brycen"] # TODO: Grab this from configuration.
    @goals = []

    names.each do |name|
      member = User.find_or_initialize_by(first_name: name)
      member.save! unless member.persisted?

      goal = Goal.find_or_initialize_by(user: member)
      goal.save! unless goal.persisted?

      @goals << goal
    end
  end

  def save_goal
    member = User.find_or_initialize_by(first_name: params[:member])
    goal = Goal.find_or_initialize_by(user: member)
    
    goal.update!(content: params[:goal])

    flash[:notice] = "Your goal was saved successfully!"
    redirect_to goals_path
  end
end