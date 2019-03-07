class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @guest = Guest.find(params[:id])
  end
  # def get_params
  #   params.require()
  # end
end
