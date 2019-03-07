class AppearancesController < ApplicationController
      before_action :get_params, only: [:create]

def new
  @appearance = Appearance.new
end
def create
  @appearance = Appearance.create(get_params)
  redirect_to episode_url(@appearance.episode_id)
end
def get_params
  params.require(:appearance).permit(:guest_id,:episode_id,:rating)
end



end
