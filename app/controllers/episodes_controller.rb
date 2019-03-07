class EpisodesController < ApplicationController
before_action :get_episode, only: [:show]

  def index
    @episodes = Episode.all
  end


  def show
   # need to find the guest associated with this specific episode
   # pass that variable into the show page
  end


  private
  def get_episode
    @episode = Episode.find(params[:id])
  end


end
