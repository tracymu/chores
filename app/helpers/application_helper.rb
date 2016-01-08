module ApplicationHelper
  def background_color(chore)
    case 
    when days_passed(chore) <  chore.frequency
      'green'
    when days_passed(chore) <= (chore.frequency * 1.25 )
      'orange'
    else
      'red'
    end
  end
  
  def days_since_done(chore)
    case days_passed(chore)
    when 0
      'Done today!'
    when 1
      'Done yesterday'
    else
      "#{days_passed(chore).to_i} days ago"
    end
  end
  
  def days_passed(chore)
    (Date.today - chore.last_done).to_i
  end
end
