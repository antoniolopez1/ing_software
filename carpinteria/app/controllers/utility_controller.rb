class UtilityController < ApplicationController
  def index
    @utilities=Utility.all
  end

  def new
    @utility=Utility.new
  end

  def create
    @utility=Utility.new
    @utility.utilities_type_id=params[:utility][:utilities_type_id]
    @utility.quantity=params[:utility][:quantity]
    @utility.width=params[:utility][:width]
    @utility.high=params[:utility][:high]
    @utility.thickness=params[:utility][:thickness]
    @utility.cost=params[:utility][:cost]
    @utility.observation=params[:utility][:observation]
    if @utility.save
      redirect_to utility_index_path
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @utility=Utility.find(id)
  end

  def update
    id=params[:id]
    @utility=Utility.find(id)
    @utility.utilities_type_id=params[:utility][:utilities_type_id]
    @utility.quantity=params[:utility][:quantity]
    @utility.width=params[:utility][:width]
    @utility.high=params[:utility][:high]
    @utility.thickness=params[:utility][:thickness]
    @utility.cost=params[:utility][:cost]
    @utility.observation=params[:utility][:observation]
    if @utility.save
      redirect_to utility_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @utility=Utility.find(id)
    @utility.destroy
    redirect_to utility_index_path
  end
end
