class PurchaseDetailController < ApplicationController
  def index
    @purchase_details=PurchaseDetail.all
  end

  def new
    @purchase_detail=PurchaseDetail.new
    @purchase_detail.purchase_id=params[:purchase]
  end

  def create
    @purchase_detail=PurchaseDetail.new
    @purchase_detail.purchase_id=params[:purchase_detail][:purchase_id]
    @purchase_detail.quantity=params[:purchase_detail][:quantity]
    @purchase_detail.material_id=params[:purchase_detail][:material_id]
    @purchase_detail.net_price=params[:purchase_detail][:net_price]
    @purchase_detail.iva=params[:purchase_detail][:iva]
    @purchase_detail.subtotal=(@purchase_detail.net_price+((@purchase_detail.net_price*@purchase_detail.iva)/100))*@purchase_detail.quantity

    #@purchase_detail.subtotal=params[:purchase_detail][:subtotal]
    if @purchase_detail.save
      redirect_to purchase_detail_new, notice: 'El detalle se ha guardado correctamente'
    else
      render 'new'
    end
  end

  def edit
    id=params[:id]
    @purchase_detail=PurchaseDetail.find(id)
  end

  def update
    id=params[:id]
    @purchase_detail=PurchaseDetail.find(id)
   @purchase_detail.purchase_id=params[:purchase_detail][:purchase_id]
    @purchase_detail.quantity=params[:purchase_detail][:quantity]
    @purchase_detail.material_id=params[:purchase_detail][:material_id]
    @purchase_detail.net_price=params[:purchase_detail][:net_price]
    @purchase_detail.iva=params[:purchase_detail][:iva]
    @purchase_detail.subtotal=(@purchase_detail.net_price+((@purchase_detail.net_price*@purchase_detail.iva)/100))*@purchase_detail.quantity

    #@purchase_detail.subtotal=params[:purchase_detail][:subtotal]
    if @purchase_detail.save
      redirect_to purchase_show_path(@purchase_detail.purchase_id)
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @purchase_detail=PurchaseDetail.find(id)
    @purchase_detail.destroy
    redirect_to purchase_show_path(@purchase_detail.purchase_id)
  end
end
