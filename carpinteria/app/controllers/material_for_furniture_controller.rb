class MaterialForFurnitureController < ApplicationController
  def index
        @material_for_furnitures=MaterialForFurniture.all

  end

  def new
        @material_for_furniture=MaterialForFurniture.new
        @material_for_furniture.furniture_id=params[:furniture]
  end

  def create
    @material_for_furniture=MaterialForFurniture.new
    @material_for_furniture.material_id=params[:material_for_furniture][:material_id]
    @material_for_furniture.furniture_id=params[:material_for_furniture][:furniture_id]
    @material_for_furniture.quantity=params[:material_for_furniture][:quantity]
    material=Material.find(@material_for_furniture.material_id)
    @material_for_furniture.cost=material.cost
    @material_for_furniture.subtotal=@material_for_furniture.cost*@material_for_furniture.quantity
    #@material_for_furniture.cost=params[:material_for_furniture][:cost]

    if @material_for_furniture.save 
      redirect_to  material_for_furniture_new_add_path(@material_for_furniture.furniture_id)
    else 
      render "new"  
    end
  end

  def edit
    id=params[:id]
    @material_for_furniture= MaterialForFurniture.find(id)

  end

  def update
    id=params[:id]
    @material_for_furniture= MaterialForFurniture.find(id)
    @material_for_furniture.material_id=params[:material_for_furniture][:material_id]
    @material_for_furniture.furniture_id=params[:material_for_furniture][:furniture_id]
    @material_for_furniture.quantity=params[:material_for_furniture][:quantity]
    material=Material.find(@material_for_furniture.material_id)
    @material_for_furniture.cost=material.cost
    @material_for_furniture.subtotal=@material_for_furniture.cost*@material_for_furniture.quantity
    #@material_for_furniture.cost=params[:material_for_furniture][:cost]

      if @material_for_furniture.save 
      redirect_to  material_for_furniture_index_path
    else 
      render "edit"  
    end
  end

  def destroy
    id=params[:id]
    material_for_furniture= MaterialForFurniture.find(id)
    material_for_furniture.destroy
    redirect_to  material_for_furniture_index_path
  end
end
