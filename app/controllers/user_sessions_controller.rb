class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to root_url, notice: "You're logged in."
    else
      flash.now[:alert] = "Invalid email or password"
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out."
  end
end
