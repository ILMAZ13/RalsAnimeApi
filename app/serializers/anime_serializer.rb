class AnimeSerializer < ActiveModel::Serializer
  attributes :url,
             :name,
             :precision,
             :vintage

  def url
    "https://www.animenewsnetwork.com/encyclopedia/manga.php?id=#{object.anime_id}"
  end
  
end