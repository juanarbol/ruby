class Apartment < ActiveRecord::Base
	has_many :people
	belongs_to :edifice
end
