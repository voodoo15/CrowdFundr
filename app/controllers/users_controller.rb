class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to projects_url, notice: "Successfully signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(current_user)
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    @user = User.find(current_user)
    if @user.update_attributes(user_params)
      redirect_to user_url(current_user)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name,
                                 :address, :city, :province, :postal_code, :phone_number)
  end
end
