class PledgesController < ApplicationController

  def index
    @pledges = Pledges.all
  end

  def destroy
    @pledge = pledge.find[params(:id)]
    @pledge.destroy
    redirect_to current_user
  end

  def show
    @pledge = Pledge.find(params[:id])
  end


end
