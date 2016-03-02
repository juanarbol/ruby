class student_subjectSubjectsController < ApplicationController
	def index
		@student_subject = Student_subject.all
	end
	def new
		@student_subject = Student_subject.new
	end
	def create
		@student_subject = Student_subject.new(student_subject_params)
		@student_subject.save
		redirect_to student_subjects_path
	end
	def edit
		@student_subject = Student_subject.find(params[:id])
	end
	def update
		@student_subject = Student_subject.find(params[:id])
		@student_subject.update(student_subject_params)
		redirect_to student_subjects_path
	end
	def show
		@student_subject = Student_subject.find(params[:id])
		redirect_to student_subjects_path
	end
	def destroy
		@student_subject = Student_subject.find(params[:id])
		@student_subject.destroy
		redirect_to student_subjects_path
	end
	def student_subject_params
		params.require(:student_subject).permit(:student_id, :subject_id)
	end	
end
