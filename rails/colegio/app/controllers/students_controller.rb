class StudentsController < ApplicationController
	def index
		@student = Student.all
	end
	def new
		@student = Student.new
	end
	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to students_path
	end
	def edit
		@student = Student.find(params[:id])
	end
	def update
		@student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to students_path
	end
	def show
		@student = Student.find(params[:id])
		redirect_to students_path
	end
	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end
	def student_params
		params.require(:student).permit(:name, :surname, :document)
	end	
end
