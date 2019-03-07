class GuestsController < ApplicationController
    before_action :get_guest, only: [:show]
  def index
    @guests = Guest.all
  end
  #
  # def new
  #   @guest = Guest.new
  #   @episode = @guest.episode
  # end

  def show
  end


  private

  def get_guest
    @guest = Guest.find(params[:id])
  end

end
