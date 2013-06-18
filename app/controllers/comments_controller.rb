class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.create( params[:comment] )
    if @comment.save
      flash[:notice] = "Your post has now been published!"
      redirect_to :root
    else
      flash[:notice] = "Fail"
    end
  end
end
