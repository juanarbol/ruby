class Airplane < ActiveRecord::Base
	belongs_to :pilot
	has_one :route

	validates :name, :pilot, presence: true
end
