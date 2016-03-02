class EnrollmentsController < ApplicationController
	def index
		@enrollment = Enrollment.all
	end
	def new
		@enrollment = Enrollment.new
	end
	def create
		@enrollment = Enrollment.new(enrollment_params)
		@enrollment.save
		redirect_to enrollments_path
	end
	def edit
		@enrollment = Enrollment.find(params[:id])
	end
	def update
		@enrollment = Enrollment.find(params[:id])
		@enrollment.update(enrollment_params)
		redirect_to enrollments_path
	end
	def show
		@enrollment = Enrollment.find(params[:id])
		redirect_to enrollments_path
	end
	def destroy
		@enrollment = Enrollment.find(params[:id])
		@enrollment.destroy
		redirect_to enrollments_path
	end
	def enrollment_params
		params.require(:enrollment).permit(:student_id, :subject_id)
	end		
end
