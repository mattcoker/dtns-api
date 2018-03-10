class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :update, :destroy]

  # GET /episodes
  def index
    @episodes = Episode.all
    json_response(@episodes)
  end

  # POST /episodes
  def create
    @episode = Episode.create!(episode_params)
    json_response(@episode, :created)
  end

  # GET /episodes/:id
  def show
    json_response(@episode)
  end

  # PUT /episodes/:id
  def update
    @episode.update(episode_params)
    head :no_content
  end

  # DELETE /episodes/:id
  def destroy
    @episode.destroy
    head :no_content
  end

  private

  def episode_params
    # whitelist params
    params.permit(:episode_number, :episode_name, :description, :download_url, :show_notes_url, :air_date, :youtube_id, :requires_review)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
