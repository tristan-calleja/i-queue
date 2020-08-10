class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show

  end

  def destroy
  end

  def create
  end

  def new
  end

  def update
  end

  def edit
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:user_id, :firstname, :lastname, :address, :phone, :description)
  end


end
