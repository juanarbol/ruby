class TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweets_params)
		@tweet.save
		redirect_to tweets_path
	end

	def edit
		@tweet = Tweet.find(params[:id])
	end

	def update
		@tweet = Tweet.find(params[:id])
		@tweet = Tweet.update(@tweet,tweets_params)
		redirect_to tweets_path
	end

	def show
		@tweet = Tweet.find(params[:id])	
	end

	def destroy
	end

	def tweets_params
		params.require(:tweet).permit(:message)
	end

end
