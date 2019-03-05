class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find params[:id]
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: 'Account created!'
    else
      render json: 'Something went wrong...'
    end
  end

  def update
    @user = User.find params[:id]
    if @user.update(user_params)
      render json: 'Account updated!'
    else
      render json: 'Update failed'
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :playing_style,
      :exp_level
    )
  end
end
