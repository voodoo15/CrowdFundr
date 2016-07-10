class Rewards2Controller < ApplicationController
  def new
    @rewards2 = Reward2.new
  end
end
