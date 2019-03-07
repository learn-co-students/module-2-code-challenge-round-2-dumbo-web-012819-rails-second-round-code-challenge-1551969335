class GuestsController < ApplicationController

	before_action :get_guests, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
  	
  end

  private

  def get_guests
  	@guest = Guest.find(params[:id])
  end

  def guest_params
  	params.require(:guest).permit(:name, :occupation)
  end
  
end
