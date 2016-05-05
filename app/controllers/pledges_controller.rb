class PledgesController < ApplicationController

def destroy
@pledge = pledge.find[params(:id)]
@pledge.destroy
redirect_to current_user

end



end
