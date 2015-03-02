class ClientMediaController < ApplicationController
  def index
    @client_media = ClientMedia.all
  end

  def show
    @client_media = ClientMedia.find(params[:id])
  end

  def new
    @client_media = ClientMedia.new
  end

  def create
    @client_media = ClientMedia.new(params[:client_media])
    if @client_media.save
      redirect_to @client_media, :notice => "Successfully created client media."
    else
      render :action => 'new'
    end
  end

  def edit
    @client_media = ClientMedia.find(params[:id])
  end

  def update
    @client_media = ClientMedia.find(params[:id])
    if @client_media.update_attributes(params[:client_media])
      redirect_to @client_media, :notice  => "Successfully updated client media."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @client_media = ClientMedia.find(params[:id])
    @client_media.destroy
    redirect_to client_media_url, :notice => "Successfully destroyed client media."
  end
end
