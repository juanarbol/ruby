class SubjectsController < ApplicationController
	def index
		@subject = Subject.all
	end
	def new
		@subject = Subject.new
	end
	def create
		@subject = Subject.new(subject_params)
		@subject.save
		redirect_to subjects_path
	end
	def edit
		@subject = Subject.find(params[:id])
	end
	def update
		@subject = Subject.find(params[:id])
		@subject.update(subject_params)
		redirect_to subjects_path
	end
	def show
		@subject = Subject.find(params[:id])
		redirect_to subjects_path
	end
	def destroy
		@subject = Subject.find(params[:id])
		@subject.destroy
		redirect_to subjects_path
	end
	def subject_params
		params.require(:subject).permit(:name)
	end	
end
