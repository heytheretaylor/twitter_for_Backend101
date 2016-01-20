class WhiskeysController < ApplicationController
  def new
  	@whiskey = Whiskey.new
  end

  def index
  end

  def create
		@whiskey = Whiskey.new(whiskey_params)
		# @whiskey.user = current_user

		if @whiskey.save
			flash[:notice] = "Whiskey Saved!"
			redirect_to whiskeys_path
		else
			logger.debug("there was an error!")
			
			# redirect_to tweets_path
		end
	end

  def show
  	@whiskey = Whiskey.find(params[:id])
  end

  	private

	def whiskey_params
		params.require(:whiskey).permit(:name)
	end
end
