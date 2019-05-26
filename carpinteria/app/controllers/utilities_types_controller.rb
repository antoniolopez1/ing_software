class UtilitiesTypesController < ApplicationController
  before_action :set_utilities_type, only: [:show, :edit, :update, :destroy]

  # GET /utilities_types
  # GET /utilities_types.json
  def index
    @utilities_types = UtilitiesType.all
  end

  # GET /utilities_types/1
  # GET /utilities_types/1.json
  def show
  end

  # GET /utilities_types/new
  def new
    @utilities_type = UtilitiesType.new
  end

  # GET /utilities_types/1/edit
  def edit
  end

  # POST /utilities_types
  # POST /utilities_types.json
  def create
    @utilities_type = UtilitiesType.new(utilities_type_params)

    respond_to do |format|
      if @utilities_type.save
        format.html { redirect_to @utilities_type, notice: 'Utilities type was successfully created.' }
        format.json { render :show, status: :created, location: @utilities_type }
      else
        format.html { render :new }
        format.json { render json: @utilities_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilities_types/1
  # PATCH/PUT /utilities_types/1.json
  def update
    respond_to do |format|
      if @utilities_type.update(utilities_type_params)
        format.html { redirect_to @utilities_type, notice: 'Utilities type was successfully updated.' }
        format.json { render :show, status: :ok, location: @utilities_type }
      else
        format.html { render :edit }
        format.json { render json: @utilities_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilities_types/1
  # DELETE /utilities_types/1.json
  def destroy
    @utilities_type.destroy
    respond_to do |format|
      format.html { redirect_to utilities_types_url, notice: 'Utilities type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilities_type
      @utilities_type = UtilitiesType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utilities_type_params
      params.require(:utilities_type).permit(:description)
    end
end
