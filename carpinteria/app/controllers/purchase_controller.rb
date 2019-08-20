class PurchaseController < ApplicationController 
  def index 
    @pagy,@purchases=pagy(Purchase.all.order("purchase_date DESC"), page: params[:page], items: 5)
    @purchases.each do |f| 
    @purchase_details=PurchaseDetail.where(["purchase_id = ?",  f.id  ])
    @u_purchase_details=UPurchaseDetail.where(["purchase_id = ?", f.id ])
      end
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "index"   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @purchase=Purchase.new
    @purchase.provider_id=params[:provider]
    if params[:provider]!=nil
      provider_id=params[:provider]
      @provider=Provider.find(provider_id)
    end
  end

  def create
    @purchase=Purchase.new
    @purchase.provider_id=params[:purchase][:provider_id]
    @purchase.purchase_date=params[:purchase][:purchase_date]
    @purchase.total=0
    @purchase.amount=params[:purchase][:amount]
    @purchase.balance=0
    if @purchase.save
      redirect_to purchase_detail_new_add_path(@purchase.id), notice: 'Favor de cargar los detalles'
    end
  end
  def show
    id=params[:id]
    @purchase=Purchase.find(id)
    @purchase_details=PurchaseDetail.where(["purchase_id = ?", "#{id}"])
    @u_purchase_details=UPurchaseDetail.where(["purchase_id = ?", "#{id}"])
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
