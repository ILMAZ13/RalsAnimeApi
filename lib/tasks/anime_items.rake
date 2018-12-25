require 'net/http'
namespace :anime_items do
  desc "Fetch anime"
  task fetch: :environment do
    url = "https://www.animenewsnetwork.com/encyclopedia/reports.xml?id=155&nlist=all"
    uri = URI(url)

    resp = Net::HTTP.get(uri)
    doc = Hash.from_xml(resp)["report"]["item"]
    doc.each do |item|
      Anime.create(
          anime_id: item["id"],
          gid: item["gid"],
          name: item["name"],
          precision: item["precision"],
          vintage: item["vintage"]
      )
    end
  end
end
