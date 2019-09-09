class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:message] = "Welcome to Cuisine Curator! Let's start making some delicious meals!"
      redirect_to user_path(@user)
    else
      flash[:message] = "Incorrect username or password. Please try again."
      redirect_to login_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
