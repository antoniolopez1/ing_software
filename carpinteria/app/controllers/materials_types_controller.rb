class MaterialsTypesController < ApplicationController
  before_action :set_materials_type, only: [:show, :edit, :update, :destroy]

  # GET /materials_types
  # GET /materials_types.json
  def index
    @materials_types = MaterialsType.all
  end

  # GET /materials_types/1
  # GET /materials_types/1.json
  def show
  end

  # GET /materials_types/new
  def new
    @materials_type = MaterialsType.new
  end

  # GET /materials_types/1/edit
  def edit
  end

  # POST /materials_types
  # POST /materials_types.json
  def create
    @materials_type = MaterialsType.new(materials_type_params)

    respond_to do |format|
      if @materials_type.save
        format.html { redirect_to material_add_type_path(@materials_type.id), notice: 'Materials type was successfully created.' }
        format.json { render :show, status: :created, location: @materials_type }
      else
        format.html { render :new }
        format.json { render json: @materials_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials_types/1
  # PATCH/PUT /materials_types/1.json
  def update
    respond_to do |format|
      if @materials_type.update(materials_type_params)
        format.html { redirect_to @materials_type, notice: 'Materials type was successfully updated.' }
        format.json { render :show, status: :ok, location: @materials_type }
      else
        format.html { render :edit }
        format.json { render json: @materials_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials_types/1
  # DELETE /materials_types/1.json
  def destroy
    @materials_type.destroy
    respond_to do |format|
      format.html { redirect_to materials_types_url, notice: 'Materials type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   def set_materials_type
      @materials_type = MaterialsType.find(params[:id])


    end

      def materials_type_params
      params.require(:materials_type).permit(:description)
    end
end
