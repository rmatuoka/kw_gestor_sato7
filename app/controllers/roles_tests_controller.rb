class RolesTestsController < ApplicationController
  access_control do
    allow :admin
  end
    
  
  def index
    @roles_tests = RolesTest.all
  end

  def show
    @roles_test = RolesTest.find(params[:id])
  end

  def new
    @roles_test = RolesTest.new
  end

  def create
    @roles_test = RolesTest.new(params[:roles_test])
    if @roles_test.save
      redirect_to @roles_test, :notice => "Successfully created roles test."
    else
      render :action => 'new'
    end
  end

  def edit
    @roles_test = RolesTest.find(params[:id])
  end

  def update
    @roles_test = RolesTest.find(params[:id])
    if @roles_test.update_attributes(params[:roles_test])
      redirect_to @roles_test, :notice  => "Successfully updated roles test."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @roles_test = RolesTest.find(params[:id])
    @roles_test.destroy
    redirect_to roles_tests_url, :notice => "Successfully destroyed roles test."
  end
end
