class AnimeRestController < ApplicationController
  def index
    render json: anime_items_collection
  end

  def anime_items_collection
    Anime.where("LOWER(name) ILIKE '%#{params[:query].downcase}%'")
  end
end
