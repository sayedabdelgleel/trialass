class Destination < ActiveRecord::Base
  attr_accessible :activated, :introduction, :name, :permalink, :starting_price, :tagline, :weather_high, :weather_low, :weather_months, :weather_temperature
  
  before_create :generate_unique_permlink
  
    self.primary_key = "permalink"

  def generate_unique_permlink
  
  	self.permalink = ActiveSupport::Base64.encode64(self.name+self.tagline+rand(1000..10000).to_s)
  end
  
end
