class ProviderController < ApplicationController
  def index
    @providers=Provider.all
  end

  def new
    @provider=Provider.new
  end

  def create
    @provider=Provider.new
    @provider.name=params[:provider][:name]
    @provider.lastname=params[:provider][:lastname]
    @provider.address=params[:provider][:address]
    @provider.telephone=params[:provider][:telephone]
    @provider.email=params[:provider][:email]
    @provider.document=params[:provider][:document]
    @provider.ruc=params[:provider][:ruc]
    if @provider.save 
      redirect_to  provider_index_path
    else 
      render "new"  
    end
  end

  def edit
    id=params[:id]
    @provider=Provider.find(id)
  end

  def update
    id=params[:id]
    @provider=Provider.find(id)
    @provider.name=params[:provider][:name]
    @provider.lastname=params[:provider][:lastname]
    @provider.address=params[:provider][:address]
    @provider.telephone=params[:provider][:telephone]
    @provider.email=params[:provider][:email]
    @provider.document=params[:provider][:document]
    @provider.ruc=params[:provider][:ruc]
    if @provider.save 
      redirect_to  provider_index_path
    else 
      render "new"  
    end
  end

  def destroy
    id=params[:id]
    @provider=Provider.find(id)
    @provider.destroy
    redirect_to  provider_index_path
  end
end
