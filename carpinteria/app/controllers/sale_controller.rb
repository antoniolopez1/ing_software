class SaleController < ApplicationController
  def index
    @sales=Sale.all
  end

  def new
    @sale=Sale.new

  end

  def show
    id=params[:id]
    @sale=Sale.find(id)
    @sales_charges=SalesCharge.where(["sale_id = ?", "#{id}"])
    
  end

  def create
    @sale=Sale.new
    @sale.order_id=params[:sale][:order_id]
    order=Order.find(@sale.order_id)
    budget=BudgetForOrder.find(order.budget_for_order_id)
    @sale.total=budget.total
    @sale.customer_id=order.customer_id
    @sale.amount=params[:sale][:amount]
    @sale.status=params[:sale][:status]
    @sale.balance=@sale.total-@sale.amount
   
    
    if @sale.save
      redirect_to sale_index_path
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @sale=Sale.find(id)
  end

  def update
    id=params[:id]
    @sale=Sale.find(id)
    @sale.order_id=params[:sale][:order_id]
    order=Order.find(@sale.order_id)
    budget=BudgetForOrder.find(order.budget_for_order_id)
    @sale.total=budget.total
    @sale.customer_id=order.customer_id
    @sale.amount=params[:sale][:amount]
    @sale.status=params[:sale][:status]
    @sale.balance=@sale.total-@sale.amount
    if @sale.save
      redirect_to sale_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @sale=Sale.find(id)
    @sale.destroy
    redirect_to sale_index_path
  end
end
