class ApartmentsController < ApplicationController
	def index
		@apartment = Apartment.all
	end
	def new
		@apartment = Apartment.new
	end
	def create
		@apartment = Apartment.new(apartment_params)
		@apartment.save
		redirect_to apartments_path
	end
	def edit
		@apartment = Apartment.find(params[:id])
	end
	def update
		@apartment = Apartment.find(params[:id])
		@apartment.update(apartment_params)
		redirect_to apartments_path
	end
	def show
		@apartment = Apartment.find(params[:id])
	end
	def destroy
		@apartment = Apartment.find(params[:id])
		@apartment.destroy
		redirect_to apartments_path
	end
	private
	def apartment_params
		params.require(:apartment).permit(:name, :floor)
	end
end
