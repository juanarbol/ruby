class Route < ActiveRecord::Base
	belongs_to :airplane
	has_many :travels
	has_many :passengers, :through => :travels

	validates :route, :airplane, presence:true
	validates :price,  numericality: { greater_than: 0}
end
