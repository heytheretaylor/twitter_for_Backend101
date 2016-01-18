class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.user = current_user

		if @tweet.save
			flash[:notice] = "Tweet Posted!"
			redirect_to tweets_path
		else
			logger.debug("there was an error!")
			
			# redirect_to tweets_path
		end
	end

	def show
		@tweet = Tweet.find(params[:id])

	end

	def index
		@tweets = Tweet.all
		@new_tweet = Tweet.new


	end


	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end
end
