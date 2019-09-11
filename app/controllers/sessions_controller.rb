class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

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
      user.password = auth[:info][:last_name]
    end
    access_token = request.env["omniauth.auth"]
    refresh_token = access_token.credentials.refresh_token
    @user.google_refresh_token = refresh_token if refresh_token.present?
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.name = auth.info.name
      user.email = auth.info.email
   end
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
