class AllController < ApplicationController
	def index
		@people = Person.all
		@apartment = Apartment.all
		@tower = Tower.all
	end
	private
	def user_params
		params.permit(:config).(:people, :apartment, :tower)
	end
end
