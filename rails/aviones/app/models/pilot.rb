class Pilot < ActiveRecord::Base
	has_one :airplane

	validates :name, presence: true
end
