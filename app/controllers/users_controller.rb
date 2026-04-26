class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to users_path
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :weight, :smoker)
  end
end
