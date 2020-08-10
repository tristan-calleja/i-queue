class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
    
  end

  def new
    @profile = Profile.new
    # @user = User.find(params[:user_id])
  end

  def destroy
  end

  def create
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
