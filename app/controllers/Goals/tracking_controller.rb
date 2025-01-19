module Goals
  class TrackingController < ApplicationController
    def index
      @character_name = params[:character_name]

      @daily_goals = Array.new(5) do
        (1..365).map { |key| [key, rand(0..4) * rand(0..1)] }.to_h
      end

      @goal_names = ['Exercise', 'Meditation', 'Reading', 'Coding', 'Writing']
    end
  end
end
