class HoursHistoryController < ApplicationController
  def index
    @hours_histories=HoursHistory.all
  end

  def new
    @hours_history=HoursHistory.new
  end

  def create
    @hours_history=HoursHistory.new
    @hours_history.entry_time=params[:hours_history][:entry_time]
    @hours_history.departure_time=params[:hours_history][:departure_time]
    @hours_history.employee_id=params[:hours_history][:employee_id]
    @hours_history.save
    if @hours_history.save
      redirect_to  hours_history_index_path
    else 
      render "new"  
    end
  end

  def edit
    id=params[:id]
    @hours_history=HoursHistory.find(id)
  end

  def update
    id=params[:id]
    @hours_history=HoursHistory.find(id)
    @hours_history.entry_time=params[:hours_history][:entry_time]
    @hours_history.departure_time=params[:hours_history][:departure_time]
    @hours_history.employee_id=params[:hours_history][:employee_id]
    @hours_history.save
    if @hours_history.save
      redirect_to  hours_history_index_path
    else 
      render "edit"  
    end
  end

  def destroy
    id=params[:id]
    @hours_history=HoursHistory.find(id)
    @hours_history.destroy
    redirect_to  employee_index_path
  end
end
