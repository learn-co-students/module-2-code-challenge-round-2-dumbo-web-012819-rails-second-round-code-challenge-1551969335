class AppearancesController < ApplicationController
  # before_action :get_appearance, only: [:show]

  # Pass in an empty instance of Appearance to create
  def new
    @appearance = Appearance.new
  end

  #Creates new instance of an appearances... checks to make sure its valid
  # if it is send to the show page of that specicic instance OR redirect
  # to the new page so user can input again
  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      # Need to update POST path to redirect to show page for instance
      redirect_to appearance_path
    else
      render :new
    end
    end

    # Utilizes before acton to get the instance of the appearances
    def show
      @appearance = Appearance.find(params[:id])
    end

    private

    # helper method that will find the specific appearances
    # def get_appearance
    #   @appearance = Appearance.find(params[:id])
    # end

    # helper method that sets up the params for appearances
    def appearance_params
      params.require(:appearances).permit(:guest_id, :episode_id, :rating)
    end
end