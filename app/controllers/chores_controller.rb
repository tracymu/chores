class ChoresController < ApplicationController
  def index
    @chores = Chore.all
  end
  
  def update
    @chore = Chore.find(params[:id])
    @chore.last_done = Date.today
    @chore.save
  end
end
