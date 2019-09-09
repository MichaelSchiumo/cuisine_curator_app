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

  def create_from_omniauth
    @user = User.find_or_create_by(:name => auth[:info][:name]) do |user|
      user.email = auth[:info][:email]
    end
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  private

    def auth
      request.env['omniauth.auth']
    end
end
