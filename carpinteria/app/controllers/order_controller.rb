class OrderController < ApplicationController
  def index
    @orders=Order.all
  end

  def new
    @order=Order.new
    @order.budget_for_order_id=params[:budget_for_order]
  end

  def create
    @order=Order.new
    @order.status=params[:order][:status]
    @order.begin_date=params[:order][:begin_date]
    @order.end_date=params[:order][:end_date]
    @order.observation=params[:order][:observation]
    @order.budget_for_order_id=params[:order][:budget_for_order_id]
    @order.customer_id=params[:order][:customer_id]
    if @order.save
      redirect_to order_index_path
    else
      render 'new'
    end

  end

  def edit
    id=params[:id]
    @order=Order.find(id)
  end

  def update
    id=params[:id]
    @order=Order.find(id)
    @order.status=params[:order][:status]
    @order.begin_date=params[:order][:begin_date]
    @order.end_date=params[:order][:end_date]
    @order.observation=params[:order][:observation]
    @order.budget_for_order_id=params[:order][:budget_for_order_id]
    @order.customer_id=params[:order][:customer_id]
    if @order.save
      redirect_to order_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @order=Order.find(id)
    @order.destroy
    redirect_to order_index_path
  end
end
