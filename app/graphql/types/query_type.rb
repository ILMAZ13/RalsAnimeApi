module Types
  class QueryType < GraphQL::Schema::Object
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :animes, [AnimeType], null: true do
      description "List of animes"
      argument :name, String, required: true
    end

    def animes(name:)
      puts name
      Anime.where("LOWER(name) ILIKE '%#{name}%'")
    end

  end
end
