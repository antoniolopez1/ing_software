class MeasureUnitsController < ApplicationController
  before_action :set_measure_unit, only: [:show, :edit, :update, :destroy]

  # GET /measure_units
  # GET /measure_units.json
  def index
    @measure_units = MeasureUnit.all
  end

  # GET /measure_units/1
  # GET /measure_units/1.json
  def show
  end

  # GET /measure_units/new
  def new
    @measure_unit = MeasureUnit.new
  end

  # GET /measure_units/1/edit
  def edit
  end

  # POST /measure_units
  # POST /measure_units.json
  def create
    @measure_unit = MeasureUnit.new(measure_unit_params)

    respond_to do |format|
      if @measure_unit.save
        format.html { redirect_to @measure_unit, notice: 'Measure unit was successfully created.' }
        format.json { render :show, status: :created, location: @measure_unit }
      else
        format.html { render :new }
        format.json { render json: @measure_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measure_units/1
  # PATCH/PUT /measure_units/1.json
  def update
    respond_to do |format|
      if @measure_unit.update(measure_unit_params)
        format.html { redirect_to @measure_unit, notice: 'Measure unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @measure_unit }
      else
        format.html { render :edit }
        format.json { render json: @measure_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measure_units/1
  # DELETE /measure_units/1.json
  def destroy
    @measure_unit.destroy
    respond_to do |format|
      format.html { redirect_to measure_units_url, notice: 'Measure unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measure_unit
      @measure_unit = MeasureUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measure_unit_params
      params.require(:measure_unit).permit(:description)
    end
end
