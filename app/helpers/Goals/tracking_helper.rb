module Goals
  module TrackingHelper
    def get_day_progess_value(week_index, day_index, hash)
      day = (week_index * 7 + day_index) - 1
      return "hidden" if day <= 0 || day > 365

      hash[day]
    end

    def get_tooltip_text(week_index, day_index, progress_index)
      day_number = (week_index * 7 + day_index) - 1

      start_date = Date.new(2025, 1, 1)
      current_date = start_date + day_number

      day_suffix = case current_date.day
                  when 1, 21, 31 then 'st'
                  when 2, 22 then 'nd'
                  when 3, 23 then 'rd'
                  else 'th'
                  end
      formatted_date = "#{current_date.strftime('%B')} #{current_date.day}#{day_suffix}, #{current_date.year}"

      "#{formatted_date}: #{progress_index * 25}%"
    end
  end
end
