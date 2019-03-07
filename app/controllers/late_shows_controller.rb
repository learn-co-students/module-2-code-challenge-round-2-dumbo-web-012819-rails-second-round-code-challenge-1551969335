class LateShowsController < ApplicationController

	before_action :get_late_shows, only: [:show]

	def index
		@late_shows = LateShow.all
	end

	def show
		
	end

	def new
		@late_show = LateShow.new
		@guest = @late_show.guest
		@episode = @late_show.episode
	end

	def create
		@late_show = LateShow.create(late_show_params)
		@guest = @late_show.guest
		@episode = @late_show.episode
		redirect_to episodes_path(@episode)
	end

	private

	def get_late_shows
		@late_show = LateShow.find(params[:id])
	end

	def late_show_params
		# byebug
		params.require(:late_show).permit(:rating, :episodes_id, :guests_id)
	end

end
