class FurnitureController < ApplicationController
  def index
    @furnitures=Furniture.all
  end

  def new
    @furniture=Furniture.new
  end

  def create
    @furniture=Furniture.new
    @furniture.description=params[:furniture][:description]
    @furniture.cost=params[:furniture][:cost]
    @furniture.profit=params[:furniture][:profit]
    @furniture.iva=params[:furniture][:iva]
    @furniture.price=(@furniture.cost+@furniture.profit+((@furniture.profit+@furniture.cost)*@furniture.iva)/100)

    if @furniture.save 
      redirect_to  material_for_furniture_new_add_path(@furniture.id)
    else 
      render "new"  
  end
  end

  def edit
    id=params[:id]
    @furniture=Furniture.find(id)
  end

  def update
    id=params[:furniture][:id]
    @furniture=Furniture.find(id)
    @furniture.description=params[:furniture][:description]
    @furniture.cost=params[:furniture][:cost]
    @furniture.profit=params[:furniture][:profit]
    @furniture.iva=params[:furniture][:iva]
    @furniture.price=(@furniture.cost+@furniture.profit+((@furniture.profit+@furniture.cost)*@furniture.iva)/100)

    if @furniture.save
      redirect_to  furniture_index_path
    else 
      render "new"  
  end
  end

  def destroy
    id=params[:id]
    furniture=Furniture.find(id)
    furniture.destroy
    redirect_to  furniture_index_path
  end
end
