class AnimeRestController < ApplicationController
  def index
    render json: anime_items_collection
  end

  def anime_items_collection
    if params[:query].present?
      Anime.where("LOWER(name) ILIKE '%#{params[:query].downcase}%'")
    else
      Anime.all
    end
  end
end
