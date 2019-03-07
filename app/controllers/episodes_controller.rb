class EpisodesController < ApplicationController

	before_action :get_episode, only: [:show]

  def index
    @episodes = Episode.all
  end

  def show
  	# @late_shows = @episode.late_shows
  	# @guests = @late_shows.guests

  	@guests = @episode.guests

  end

  private

  def get_episode
  	@episode = Episode.find(params[:id])
  end

end
