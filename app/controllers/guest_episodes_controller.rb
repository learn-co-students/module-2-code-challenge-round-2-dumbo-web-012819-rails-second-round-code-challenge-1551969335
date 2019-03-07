class GuestEpisodesController < ApplicationController

  def new
    @guest_episode = GuestEpisode.new
    @guest = @guest_episode.guest
    @episode = @guest_episode.episode
  end

  def create
    @guest_episode = guest_episode.create(guest_episode_params)
    @guest = @guest_episode.guest
    @episode = @guest_episode.episode
      redirect_to episode_path(@episode)
  end

private

def guest_episode_params
  params.require(:guest_episode).permit(:guest_id, :episode_id, :rating)
end

end
