class UtilitiesForFurnitureController < ApplicationController
  def index
     @utilities_for_furnitures=UtilitiesForFurniture.all
  end

  def new
      @utilities_for_furniture=UtilitiesForFurniture.new

  end

  def create
      @utilities_for_furniture=UtilitiesForFurniture.new
      @utilities_for_furniture.utilities_id=params[:utilities_for_furniture][:utilities_id]
      @utilities_for_furniture.furniture_id=params[:utilities_for_furniture][:furniture_id]
      @utilities_for_furniture.width=params[:utilities_for_furniture][:width]
      @utilities_for_furniture.high=params[:utilities_for_furniture][:high]
      @utilities_for_furniture.thickness=params[:utilities_for_furniture][:thickness]
      @utilities_for_furniture.cost=params[:utilities_for_furniture][:cost]

if @utilities_for_furniture.save 
      redirect_to  utilities_for_furniture_index_path
    else 
      render "new"  
  end
  end

  def edit
    id=params[:id]
    @utilities_for_furniture=UtilitiesForFurniture.find(id)
  end

  def update
    id=params[:utilities_for_furniture][:id]
    @utilities_for_furniture=UtilitiesForFurniture.find(id)
    @utilities_for_furniture.utilities_id=params[:utilities_for_furniture][:utilities_id]
    @utilities_for_furniture.furniture_id=params[:utilities_for_furniture][:furniture_id]
    @utilities_for_furniture.width=params[:utilities_for_furniture][:width]
    @utilities_for_furniture.high=params[:utilities_for_furniture][:high]
    @utilities_for_furniture.thickness=params[:utilities_for_furniture][:thickness]
    @utilities_for_furniture.cost=params[:utilities_for_furniture][:cost]

    if @utilities_for_furniture.save 
      redirect_to  utilities_for_furniture_index_path
    else 
      render "new"  
  end
  end

  def destroy
    id=params[:id]
    utilities_for_furniture=UtilitiesForFurniture.find(id)
    utilities_for_furniture.destroy
    redirect_to  utilities_for_furniture_index_path
  end
end
