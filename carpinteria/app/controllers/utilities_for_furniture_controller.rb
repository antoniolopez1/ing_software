class UtilitiesForFurnitureController < ApplicationController
  def index
     @utilities_for_furnitures=UtilitiesForFurniture.all
  end

  def new
      @utilities_for_furniture=UtilitiesForFurniture.new

  end

  def create
      @utilities_for_furniture=UtilitiesForFurniture.new
      @utilities_for_furniture.utility_id=params[:utilities_for_furniture][:utility_id]
      @utilities_for_furniture.furniture_id=params[:utilities_for_furniture][:furniture_id]
      @utilities_for_furniture.width=params[:utilities_for_furniture][:width]
      @utilities_for_furniture.high=params[:utilities_for_furniture][:high]
      @utilities_for_furniture.thickness=params[:utilities_for_furniture][:thickness]
      @utilities_for_furniture.quantity=params[:utilities_for_furniture][:quantity]
      #No puede ser el mismo costo de utilities porque se va cortar la madera y al cortar se divide.
      #ver como calcular
      #posiblemente se relacione con utilities_type y depende de lo que se va usar se elija el utility.
      utility=Utility.find(@utilities_for_furniture.utility_id)
      @utilities_for_furniture.cost=utility.cost
      @utilities_for_furniture.subtotal=@utilities_for_furniture.cost*@utilities_for_furniture.quantity
      #@utilities_for_furniture.cost=params[:utilities_for_furniture][:cost]

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
    @utilities_for_furniture.utility_id=params[:utilities_for_furniture][:utility_id]
    @utilities_for_furniture.furniture_id=params[:utilities_for_furniture][:furniture_id]
    @utilities_for_furniture.width=params[:utilities_for_furniture][:width]
    @utilities_for_furniture.high=params[:utilities_for_furniture][:high]
    @utilities_for_furniture.thickness=params[:utilities_for_furniture][:thickness]
    @utilities_for_furniture.quantity=params[:utilities_for_furniture][:quantity]
    utility=Utility.find(@utilities_for_furniture.utility_id)
    @utilities_for_furniture.cost=utility.cost
    @utilities_for_furniture.subtotal=@utilities_for_furniture.cost*@utilities_for_furniture.quantity
    #@utilities_for_furniture.cost=params[:utilities_for_furniture][:cost]

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
