# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.example.com"

SitemapGenerator::Sitemap.create do

    add boats_path
    
    Boat.find_each do |boat|
      add boat_path(boat), :lastmod => boat.updated_at
    end
    
    add destinations_path
    
    Destination.find_each do |dest|
      add destination_path(dest), :lastmod => dest.updated_at
    end
end
