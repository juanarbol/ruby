class TravelsController < ApplicationController
	def index
		@travel = Travel.all
		@passengers = Passenger.all
		@routes = Route.all
	end
	def new
		@travel = Travel.new
	end
	def create
		@travel = Travel.create(travel_params)
		redirect_to travels_path
	end
	def edit
		@travel = Travel.find(params[:id])
	end
	def update
		@travel = Travel.find(params[:id])
		@travel.update(travel_params)
		redirect_to travels_path
	end
	def show
		@travel = Travel.find(params[:id])
	end
	def destroy
		@travel = Travel.find(params[:id])
		@travel.destroy
		redirect_to travels_path
	end
	def travel_params
		params.require(:travel).permit(:passenger_id, :route_id)
	end
end
