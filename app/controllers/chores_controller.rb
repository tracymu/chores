class ChoresController < ApplicationController
  def index
    @chores = Chore.find_by_sql(ordered_chores)
  end
  
  def ordered_chores
    "SELECT *, ((julianday('now') - julianday(last_done)) / frequency) AS priority from chores order by priority desc"
  end
  
  def update
    @chore = Chore.find(params[:id])
    @chore.last_done = Date.today
    @chore.save
  end
end
