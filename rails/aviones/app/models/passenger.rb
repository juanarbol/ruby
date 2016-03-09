class Passenger < ActiveRecord::Base
	has_many :travels
	has_many :routes, :through => :travel
end
