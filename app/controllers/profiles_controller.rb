class ProfilesController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy, :manage]

  def authenticate_user
    redirect_to :new_user_session_path unless current_user
  end

  def index
    @profile_search = Profile.search(params[:search])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create( params[:profile] )
    @profile.user = current_user
    if @profile.save
      flash[:notice] = "This is your profile"
      redirect_to profile_path(@profile.id)
    else
      flash[:error] = "Hey, Make sure Everything is filled out"
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @profile_comments = Comment.where( 'profile_id' => @profile )
    @sorted_profile_comments = @profile_comments.sort_by{ |comment| comment.count_sum }.reverse
  end

  def manage
    @user_profiles = Profile.all( params[:current_user_id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      flash[:notice] = "This is your updated profile"
      redirect_to profile_path(@profile)
    else
      flah[:error] = "could not update profile"
      redirect_to edit_profile_path(@profile)
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    if @profile.destroy
      flash[:notice] = "Requested profile has been deleted"
      redirect_to :back
    else
      flah[:error] = "Could delete profile"
      redirect_to :back
    end
  end

end
