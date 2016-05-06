class PledgesController < ApplicationController

  def destroy
    @pledge = pledge.find[params(:id)]
    @pledge.destroy
    redirect_to current_user
  end

  def create
    @pledge = Pledge.new(pledge_params)
    if @pledge.save
      flash[:notice] = "Pledge made!"
      redirect_to root_url
    end
  end

  def new
    @project = Project.find(params[:project_id])
    @pledge = Pledge.new

  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :user_id, :reward_id )
  end
end
