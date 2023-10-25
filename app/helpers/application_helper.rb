module ApplicationHelper
  def month_options
    Date::MONTHNAMES.compact.map.with_index(1) do |name, index| 
      ["#{index} - #{name}", index] 
    end
  end

  def year_options
    (Date.today.year..Date.today.year+10).to_a
  end
end
