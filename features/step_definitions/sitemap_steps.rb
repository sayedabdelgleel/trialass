When /^I open sitemap$/ do
#boats
  Boat.create(:name=> "first boat", :model_name=>"first model" , :model_year=>1999)
  Boat.create(:name=> "Second boat", :model_name=>"second model" , :model_year=>1998)

  #destination
  Destination.create(:name=>"first destination" , :tagline => "first tagline")
  Destination.create(:name=>"second destination", :tagline => "second tagline")

 bcount = Boat.all.length + Destination.all.length 
 bcount +=1
 i = 0
  visit '/sitemap.xml'
  xmldata = page.driver.html
  # p xmldata
  Hash.from_xml(xmldata)["urlset"]["url"].inject({}) do |myhash, elem|
     has_value_and_name =  Rails.application.routes.recognize_path(elem["loc"], :method => :get)
     assert has_value_and_name
     p Rails.application.routes.recognize_path(elem["loc"], :method => :get)
    i+=1
  end
  # p i
  # p bcount
 has_value_and_name = bcount==i
 assert has_value_and_name
end

