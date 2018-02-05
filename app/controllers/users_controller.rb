class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end
end
