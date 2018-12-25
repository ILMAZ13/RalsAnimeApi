module Types
  class AnimeType < GraphQL::Schema::Object
    description "An Anime"
    field :url, String, null: false
    field :name, String, null: false
    field :precision, String, null: false
    field :vintage, String, null: false

    def url
      "https://www.animenewsnetwork.com/encyclopedia/manga.php?id=#{object.anime_id}"
    end

  end
end
