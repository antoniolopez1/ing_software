class BudgetForOrdersController < ApplicationController
  before_action :set_budget_for_order, only: [:show, :edit, :update, :destroy]

  # GET /budget_for_orders
  # GET /budget_for_orders.json
  def index
    @budget_for_orders = BudgetForOrder.all.order("created_at DESC")
  end

  # GET /budget_for_orders/1
  # GET /budget_for_orders/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show"   # Excluding ".pdf" extension.
      end
    end
  end

  # GET /budget_for_orders/new
  def new
    @budget_for_order = BudgetForOrder.new
  end

  # GET /budget_for_orders/1/edit
  def edit
  end

  # POST /budget_for_orders
  # POST /budget_for_orders.json
  def create
    @budget_for_order = BudgetForOrder.new(budget_for_order_params)
    @budget_for_order.total=0
    respond_to do |format|
      if @budget_for_order.save
        format.html { redirect_to budget_new_add_path(@budget_for_order.id), notice: 'Favor de agregar los detalles' }
        format.json { render :show, status: :created, location: @budget_for_order }
      else
        format.html { render :new }
        format.json { render json: @budget_for_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_for_orders/1
  # PATCH/PUT /budget_for_orders/1.json
  def update
    respond_to do |format|
      if @budget_for_order.update(budget_for_order_params)
        format.html { redirect_to @budget_for_order, notice: 'Budget for order was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_for_order }
      else
        format.html { render :edit }
        format.json { render json: @budget_for_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_for_orders/1
  # DELETE /budget_for_orders/1.json
  def destroy
    @budget_for_order.destroy
    respond_to do |format|
      format.html { redirect_to budget_for_orders_url, notice: 'Budget for order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_for_order
      @budget_for_order = BudgetForOrder.find(params[:id])
      @budgets=Budget.where(["budget_for_order_id = ?", "#{params[:id]}"])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_for_order_params
      params.require(:budget_for_order).permit(:observation, :customer_id)
    end
end
