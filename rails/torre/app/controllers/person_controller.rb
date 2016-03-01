class PersonController < ApplicationController
	def index
		@person = Person.all
	end
	def new
		@person = Person.new
	end
	def create
		@person = Person.new(person_params)
		@person.save
		redirect_to persons_path
	end
	def edit
		@person = Person.find(params[:id])
	end
	def update
		@person = Person.find(params[:id])
		@person.update(person_params)
		redirect_to persons_path
	end
	def show
		@person = Person.find(params[:id])
	end
	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to persons_path
	end
	private
	def person_params
		params.require(:person).permit(:name, :document)
	end
end
