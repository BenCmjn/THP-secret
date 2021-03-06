class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to secret_path
      flash.now[:success] = 'Welcome! Ton compte est créé'

    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation)
  end

end
