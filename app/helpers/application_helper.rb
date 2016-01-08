module ApplicationHelper
  def background_color(chore)
    @chore = chore
    case 
    when days_passed <  chore.frequency
      'green'
    when days_passed <= (chore.frequency * 1.25 )
      'orange'
    else
      'red'
    end
  end
  
  def days_since_done(chore)
    days_passed.to_i
  end
  
  def days_passed
    Date.today - @chore.last_done
  end
end
