class Boat < ActiveRecord::Base
  attr_accessible :id,:activated, :berths, :cabins, :description, :fuel_capacity, :heads, :hull, :length_ft, :max_persons, :model_name, :model_year, :name, :permalink, :water_capacity
  
  before_create :generate_unique_permlink
  
  self.primary_key = "permalink"
  
  def generate_unique_permlink
  	# p self.name
  	# p self.model_name
  	# p self.model_year
  	# p "=-===========0=0=0"
  	self.permalink = Base64.encode64(self.name+self.model_name+self.model_year.to_s+rand(1000..10000).to_s)
  end
end
