# encoding: utf-8
class UsersController < ApplicationController

  before_filter :require_user
  access_control do
    allow :admin
  end
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_to @user, :notice => "usuário criado com sucesso."
    else
      render :action => 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => "Account updated!"
    else
      render :action => 'edit'
    end
  end
   def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed test."
  end
end
