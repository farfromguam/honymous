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
      redirect_to profile_path(@profile.id)
    else
      flash[:notice] = "Fail"
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @profile_comments = Comment.where( 'profile_id' => @profile)
  end
end
