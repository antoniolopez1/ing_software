class BudgetController < ApplicationController
  def index
    @budgets=Budget.all
  end

  def new
    @budget=Budget.new
    @budget.budget_for_order_id=params[:budget_for_order]
  end

  def create
    @budget=Budget.new
    @budget.budget_for_order_id=params[:budget][:budget_for_order_id]
    @budget.furniture_id=params[:budget][:furniture_id]
    @budget.observation=params[:budget][:observation]
    @budget.quantity=params[:budget][:quantity]
    furniture=Furniture.find(@budget.furniture_id)
    @budget.unit_price=furniture.price
    @budget.subtotal=@budget.unit_price*@budget.quantity
    
    if @budget.save
      redirect_to budget_new_add_path(@budget.budget_for_order_id)
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @budget=Budget.find(id)
  end

  def update
    id=params[:id]
    @budget=Budget.find(id)
    @budget.budget_for_order_id=params[:budget][:budget_for_order_id]
    @budget.furniture_id=params[:budget][:furniture_id]
    @budget.observation=params[:budget][:observation]
    @budget.quantity=params[:budget][:quantity]
    furniture=Furniture.find(@budget.furniture_id)
    @budget.unit_price=furniture.price
    @budget.subtotal=@budget.unit_price*@budget.quantity
    if @budget.save
      redirect_to budget_for_order_path(@budget.budget_for_order_id)
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @budget=Budget.find(id)
    @budget.destroy
    redirect_to budget_index_path
  end
end
