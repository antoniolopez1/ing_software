class SalesChargeController < ApplicationController
  def index
    @sales_charges=SalesCharge.all
  end

  def new
    @sales_charge=SalesCharge.new
  end

  def create
    @sales_charge=SalesCharge.new
    @sales_charge.sale_id=params[:sales_charge][:sale_id]
    @sale=Sale.find(@sales_charge.sale_id)

    @sales_charge.customer_id=@sale.customer_id
    @sales_charge.amount=params[:sales_charge][:amount]
    @sales_charge.balance=@sale.balance-@sales_charge.amount
    if @sales_charge.save
      redirect_to sales_charge_index_path
    else
        render 'new'
    end
  end

  def edit
    id=params[:id]
    @sales_charge=SalesCharge.find(id)
  end

  def update
    id=params[:id]
    @sales_charge=SalesCharge.find(id)
    @sales_charge.sale_id=params[:sales_charge][:sale_id]
    @sale=Sale.find(@sales_charge.sale_id)
    @sales_charge.customer_id=@sale.customer_id
    @sales_charge.amount=params[:sales_charge][:amount]

    #@sales_charge.balance=@sale.balance-@sales_charge.amount
    if @sales_charge.save
      redirect_to sales_charge_index_path
    else
        render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @sales_charge=SalesCharge.find(id)
    @sales_charge.destroy
    redirect_to sales_charge_index_path
  end
end
