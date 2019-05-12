class MaterialController < ApplicationController
  def index
    @materials=Material.all
  end

  def new
    @material=Material.new

  end

  def create
    @material=Material.new
    @material.materials_type_id=params[:material][:materials_type_id]
    @material.measure_unit_id=params[:material][:measure_unit_id]
    @material.description=params[:material][:description]
    @material.quantity=params[:material][:quantity]
    @material.cost=params[:material][:cost]


    if @material.save 
      redirect_to  material_index_path
    else 
      render "new"  
    end

  end

  def edit
    id=params[:id]
    @material= Material.find(id)
  end

  def update
    id=params[:id]
    @material= Material.find(id)
    @material.materials_type_id=params[:material][:materials_type_id]
    @material.measure_unit_id=params[:material][:measure_unit_id]
    @material.description=params[:material][:description]
    @material.quantity=params[:material][:quantity]
    @material.cost=params[:material][:cost]

     if @material.save 
      redirect_to  material_index_path
    else 
      render "edit"  
    end
  end

  def destroy
    id=params[:id]
    material= Material.find(id)
    material.destroy
    redirect_to  material_index_path
  end
end
