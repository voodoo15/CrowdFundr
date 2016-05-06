class PledgesController < ApplicationController

  def destroy
    @pledge = pledge.find[params(:id)]
    @pledge.destroy
    redirect_to current_user
  end

  def create
    @pledge = Pledge.new(pledge_params)
    if @pledge.save notice: "Pledge made!"
      redirect_to root_url
    end
  end

  def new
  end

  private

  def pledge_params
    binding.pry
    params.require(:pledge).permit(:amount, :user_id, :reward_id )
  end
end
