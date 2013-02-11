xml.instruct!
    xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

      xml.url do
        xml.loc "http://www.mysite.com"
        xml.priority 1.0
      end

      Boat.all.each do |boat|
        xml.url do
          xml.loc boat_url(boat)
          xml.lastmod boat.updated_at.to_date
          xml.priority 0.9
        end
      end

      Destination.all.each do |dest|
        xml.url do
          xml.loc destination_url(dest)
          xml.lastmod dest.updated_at.to_date
          xml.priority 0.9
        end
      end

    end