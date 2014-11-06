class UserTestsController < ApplicationController
  def index
    @user_tests = UserTest.all
  end

  def show
    @user_test = UserTest.find(params[:id])
  end

  def new
    @user_test = UserTest.new
  end

  def create
    @user_test = UserTest.new(params[:user_test])
    if @user_test.save
      redirect_to @user_test, :notice => "Successfully created user test."
    else
      render :action => 'new'
    end
  end

  def edit
    @user_test = UserTest.find(params[:id])
  end

  def update
    @user_test = UserTest.find(params[:id])
    if @user_test.update_attributes(params[:user_test])
      redirect_to @user_test, :notice  => "Successfully updated user test."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user_test = UserTest.find(params[:id])
    @user_test.destroy
    redirect_to user_tests_url, :notice => "Successfully destroyed user test."
  end
end
