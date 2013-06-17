class ProfilesController < ApplicationController
  def index
    @profile_search = Profile.search(params[:search])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create( params[:profile] )
    if @profile.save
      flash[:notice] = "Your post has now been published!"
      redirect_to :root
    else
      flash[:notice] = "Fail"
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
