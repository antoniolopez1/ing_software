class PurchaseController < ApplicationController
  def index
    @purchases=Purchase.all
  end

  def new
    @purchase=Purchase.new
  end

  def create
    @purchase=Purchase.new
    @purchase.provider_id=params[:purchase][:provider_id]
    @purchase.purchase_date=params[:purchase][:purchase_date]
    @purchase.total=0
    @purchase.amount=params[:purchase][:amount]
    @purchase.balance=0
    if @purchase.save
      redirect_to purchase_detail_new_add_path(@purchase['id'])
    else
      render "new"
    end
  end

  def edit
    id=params[:id]
    @purchase=Purchase.find(id)
  end

  def update
    id=params[:id]
    @purchase=Purchase.find(id)
    @purchase.purchase_date=params[:purchase][:purchase_date]
    #@purchase.total=0
    @purchase.amount=params[:purchase][:amount]
    @purchase.balance=@purchase.total-@purchase.amount
    if @purchase.save
      redirect_to purchase_index_path
    else
      render "edit"
    end
  end

  def destroy
    id=params[:id]
    @purchase=Purchase.find(id)
    @purchase.destroy
    redirect_to purchase_index_path
  end
end
