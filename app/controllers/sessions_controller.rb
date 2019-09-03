class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:message] = "Welcome to Cuisine Curator! Let's start making some delicious meals!"
      redirect_to user_path(@user)
    else
      flash[:message] = "Incorrect username or password. Please try again."
      redirect_to login_path
    end
  end

  def destroy
    session.destroy :user_id
    redirect_to root_path
  end
end
