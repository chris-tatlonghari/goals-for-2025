module Goals
  module TrackingHelper
    def get_day_progess_value(week_index, day_index, hash)
      day = (week_index * 7 + day_index) - 1
      return "hidden" if day <= 0 || day > 365
      
      hash[day]
    end
  end
end
