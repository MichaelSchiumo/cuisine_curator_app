class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def index
    @users = User.all
  end

  def update
    if @user.update(user_params)
      flash[:alert] = "Your profile has successfully been updated."
      redirect_to user_path
    else
      render :edit
    end      
  end

  private

    def user_params
      params.require(:user).permit(:name, :password_digest, :uid, :years_experience, :email, :location)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
