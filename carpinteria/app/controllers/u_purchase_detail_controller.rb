class UPurchaseDetailController < ApplicationController
  def index
    @u_purchase_details=UPurchaseDetail.all
  end

  def new
    @u_purchase_detail=UPurchaseDetail.new
  end

  def create
    @u_purchase_detail=UPurchaseDetail.new
    @u_purchase_detail.purchase_id=params[:u_purchase_detail][:purchase_id]
    @u_purchase_detail.utility_id=params[:u_purchase_detail][:utility_id]
    @u_purchase_detail.quantity=params[:u_purchase_detail][:quantity]
    @u_purchase_detail.width=params[:u_purchase_detail][:width]
    @u_purchase_detail.high=params[:u_purchase_detail][:high]
    @u_purchase_detail.thickness=params[:u_purchase_detail][:thickness]
    @u_purchase_detail.cost=params[:u_purchase_detail][:cost]
   # @u_purchase_detail.subtotal=params[:u_purchase_detail][:subtotal]
    @u_purchase_detail.subtotal=u_purchase_detail.cost*@u_purchase_detail.quantity
    if @u_purchase_detail.save
      redirect_to u_purchase_detail_index_path
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @u_purchase_detail=UPurchaseDetail.find(id)
  end

  def update
    id=params[:id]
    @u_purchase_detail=UPurchaseDetail.find(id)
     @u_purchase_detail.purchase_id=params[:u_purchase_detail][:purchase_id]
    @u_purchase_detail.utility_id=params[:u_purchase_detail][:utility_id]
    @u_purchase_detail.quantity=params[:u_purchase_detail][:quantity]
    @u_purchase_detail.width=params[:u_purchase_detail][:width]
    @u_purchase_detail.high=params[:u_purchase_detail][:high]
    @u_purchase_detail.thickness=params[:u_purchase_detail][:thickness]
    @u_purchase_detail.cost=params[:u_purchase_detail][:cost]
    #@u_purchase_detail.subtotal=params[:u_purchase_detail][:subtotal]
    @u_purchase_detail.subtotal=u_purchase_detail.cost*@u_purchase_detail.quantity
    if @u_purchase_detail.save
      redirect_to u_purchase_detail_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @u_purchase_detail=UPurchaseDetail.find(id)
    @u_purchase_detail.destroy
    redirect_to u_purchase_detail_index_path
  end
end
