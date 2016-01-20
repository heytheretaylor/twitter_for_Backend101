class ProfilesController < ApplicationController
  def show
  	@profile = Profile.find(params[:id])
  end

  def create
  	@profile = Profile.new(profile_params)
  	@profile.user = current_user

  	if @profile.save
  		flash[:notice] = "Created profile!"
  		redirect_to profile_path(@profile)
  	else
  		flash[:alert] = "Could not save profile :-(. #{@profile.errors.full_messages.join('; ')}"
  		redirect_to new_profile_path
  	end
  end

  def new
  	@profile = Profile.new
  end

  def update
  	@profile = Profile.find(params[:id])
  	@profile.user = current_user
  	redirect_to profile_path(@profile)
  end


  private

  def profile_params
  	params.require(:profile).permit(:tagline, :avatar)
  end
end
