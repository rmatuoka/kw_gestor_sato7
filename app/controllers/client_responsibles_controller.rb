class ClientResponsiblesController < ApplicationController
  def index
    @client_responsibles = ClientResponsible.all
  end

  def show
    @client_responsible = ClientResponsible.find(params[:id])
  end

  def new
    @client_responsible = ClientResponsible.new
  end

  def create
    @client_responsible = ClientResponsible.new(params[:client_responsible])
    if @client_responsible.save
      redirect_to @client_responsible, :notice => "Successfully created client responsible."
    else
      render :action => 'new'
    end
  end

  def edit
    @client_responsible = ClientResponsible.find(params[:id])
  end

  def update
    @client_responsible = ClientResponsible.find(params[:id])
    if @client_responsible.update_attributes(params[:client_responsible])
      redirect_to @client_responsible, :notice  => "Successfully updated client responsible."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @client_responsible = ClientResponsible.find(params[:id])
    @client_responsible.destroy
    redirect_to client_responsibles_url, :notice => "Successfully destroyed client responsible."
  end
end
