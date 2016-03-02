class TeachersController < ApplicationController
	def index
		@teacher = Teacher.all
	end
	def new
		@teacher = Teacher.new
	end
	def create
		@teacher = Teacher.new(teacher_params)
		@teacher.save
		redirect_to teachers_path
	end
	def edit
		@teacher = Teacher.find(params[:id])
	end
	def update
		@teacher = Teacher.find(params[:id])
		@teacher.update(teacher_params)
		redirect_to teachers_path
	end
	def show
		@teacher = Teacher.find(params[:id])
		redirect_to teachers_path
	end
	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy
		redirect_to teachers_path
	end
	def teacher_params
		params.require(:teacher).permit(:name, :surname, :document, :subject_id)
	end
end
