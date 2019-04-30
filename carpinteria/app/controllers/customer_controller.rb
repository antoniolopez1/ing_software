class CustomerController < ApplicationController
  def index
    @customers=Customer.all
  end

  def new
    @customer=Customer.new
  end

  def create
    @customer=Customer.new
    @customer.name=params[:customer][:name]
    @customer.lastname=params[:customer][:lastname]
    @customer.address=params[:customer][:address]
    @customer.telephone=params[:customer][:telephone]
    @customer.email=params[:customer][:email]
    @customer.document=params[:customer][:document]
    @customer.ruc=params[:customer][:ruc]
    @customer.observation=params[:customer][:observation]
    if @customer.save
      redirect_to customer_index_path
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @customer=Customer.find(id) 
  end

  def update
    id=params[:id]
    @customer=Customer.find(id)
    @customer.name=params[:customer][:name]
    @customer.lastname=params[:customer][:lastname]
    @customer.address=params[:customer][:address]
    @customer.telephone=params[:customer][:telephone]
    @customer.email=params[:customer][:email]
    @customer.document=params[:customer][:document]
    @customer.ruc=params[:customer][:ruc]
    @customer.observation=params[:customer][:observation]
    if @customer.save
      redirect_to customer_index_path
    else
      render 'new'
    end
  end

  def destroy
    id=params[:id]
    @customer=Customer.find(id)
    @customer.destroy
    redirect_to customer_index_path
  end
end
