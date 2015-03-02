class ClientContractsController < ApplicationController
  def index
    @client_contracts = ClientContract.all
  end

  def show
    @client_contract = ClientContract.find(params[:id])
  end

  def new
    @client_contract = ClientContract.new
  end

  def create
    @client_contract = ClientContract.new(params[:client_contract])
    if @client_contract.save
      redirect_to @client_contract, :notice => "Successfully created client contract."
    else
      render :action => 'new'
    end
  end

  def edit
    @client_contract = ClientContract.find(params[:id])
  end

  def update
    @client_contract = ClientContract.find(params[:id])
    if @client_contract.update_attributes(params[:client_contract])
      redirect_to @client_contract, :notice  => "Successfully updated client contract."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @client_contract = ClientContract.find(params[:id])
    @client_contract.destroy
    redirect_to client_contracts_url, :notice => "Successfully destroyed client contract."
  end
end
