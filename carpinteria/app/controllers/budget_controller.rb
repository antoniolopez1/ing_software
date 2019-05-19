class BudgetController < ApplicationController
  def index
    @budgets=Budget.all
  end

  def new
    @budget=Budget.new
  end

  def create
    @budget=Budget.new
    @budget.observation=params[:budget][:observation]
    @budget.quantity=params[:budget][:quantity]
    @budget.unit_price=params[:budget][:unit_price]
    @budget.subtotal=params[:budget][:subtotal]
    @budget.furniture_id=params[:budget][:furniture_id]
    if @budget.save
      redirect_to budget_index_path
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
     @budget.observation=params[:budget][:observation]
    @budget.quantity=params[:budget][:quantity]
    @budget.unit_price=params[:budget][:unit_price]
    @budget.subtotal=params[:budget][:subtotal]
    @budget.furniture_id=params[:budget][:furniture_id]
    if @budget.save
      redirect_to budget_index_path
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
