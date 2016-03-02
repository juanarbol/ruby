class AnswersController < ApplicationController
	def index
		@answer = Answer.all
	end
	def new
		@answer = Answer.new
	end
	def create
		@answer = Answer.new(homework_params)
		@answer.save
		@answer.update_column(:subject_id, @answer.homework.subject.id)
		redirect_to answers_path
	end
	def edit
		@answer = Answer.find(params[:id])
	end
	def update
		@answer = Answer.find(params[:id])
		@answer.update(homework_params)
		redirect_to answers_path
	end
	def show
		@answer = Answer.find(params[:id])
		redirect_to answers_path
	end
	def destroy
		@answer = Answer.find(params[:id])
		@answer.destroy
		redirect_to answers_path
	end
	def homework_params
		params.require(:answer).permit(:answer, :student_id, :homework_id)
	end
end
