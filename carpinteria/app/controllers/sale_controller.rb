class SaleController < ApplicationController
  def index
    @sales=Sale.all
  end

  def new
    @sale=Sale.new
  end

  def create
    @sale=Sale.new
    @sale.total=params[:sale][:total]
    @sale.amount=params[:sale][:amount]
    @sale.status=params[:sale][:status]
    @sale.balance=params[:sale][:balance]
    @sale.order_id=params[:sale][:order_id]
    @sale.customer_id=params[:sale][:customer_id]
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
    @sale.total=params[:sale][:total]
    @sale.amount=params[:sale][:amount]
    @sale.status=params[:sale][:status]
    @sale.balance=params[:sale][:balance]
    @sale.order_id=params[:sale][:order_id]
    @sale.customer_id=params[:sale][:customer_id]
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
