class AnimeResource < JSONAPI::Resource
  attributes :url,
             :name,
             :precision,
             :vintage

  filter :name

  filter :name, apply: ->(records, value, _options) {
    records.where("LOWER(name) ILIKE ?", "%#{value[0]}%")
  }

  def url
    "https://www.animenewsnetwork.com/encyclopedia/manga.php?id=#{@model.anime_id}"
  end

end
