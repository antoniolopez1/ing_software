class HoursHistoryController < ApplicationController
  def hour_to_float(hour)
    mf=hour.strftime("%M").to_f
    hora=hour.strftime("%H").to_f
    minuto=mf.to_f/60
    puts (hora+minuto)
    return hora+minuto
  end
  def subtract_hours(time,time2)
    
    hora=time.strftime("%H").to_f
    minuto=time.strftime("%M").to_f
    hora1=hora-(time2.strftime("%H").to_f)
    minuto1=minuto-time2.strftime("%M").to_f
    nueva_hora=Time.new(2019, 4, 27, hora1,minuto1)
    return nueva_hora
  end
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
    if @hours_history.departure_time.strftime("%H").to_f<17
      departure_time=hour_to_float(@hours_history.departure_time)
      entry_time=hour_to_float(@hours_history.entry_time)
      acumulated=departure_time-entry_time
      extra=0
    else
      dt=subtract_hours(@hours_history.departure_time,Time.new(2019, 4, 27, 17))
      puts (dt)
      departure_time=hour_to_float(subtract_hours(@hours_history.departure_time, dt))
      entry_time=hour_to_float(@hours_history.entry_time)
      acumulated=departure_time-entry_time
      extra=hour_to_float(dt)
    end
    @hours_history.total_hours= acumulated
    @hours_history.extra_hours= extra
    @hours_history.employee_id=params[:hours_history][:employee_id]
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
    if @hours_history.departure_time.strftime("%H").to_f<17
      departure_time=hour_to_float(@hours_history.departure_time)
      entry_time=hour_to_float(@hours_history.entry_time)
      acumulated=departure_time-entry_time
      extra=0
    else
      dt=subtract_hours(@hours_history.departure_time,Time.new(2019, 4, 27, 17))
      puts (dt)
      departure_time=hour_to_float(subtract_hours(@hours_history.departure_time, dt))
      entry_time=hour_to_float(@hours_history.entry_time)
      acumulated=departure_time-entry_time
      extra=hour_to_float(dt)
    end
    @hours_history.total_hours= acumulated
    @hours_history.extra_hours= extra
    @hours_history.employee_id=params[:hours_history][:employee_id]
    if @hours_history.save
      redirect_to  hours_history_index_path
    else 
      render "new"  
    end
  end

  def destroy
    id=params[:id]
    @hours_history=HoursHistory.find(id)
    @hours_history.destroy
    redirect_to  hours_history_index_path
  end
end
