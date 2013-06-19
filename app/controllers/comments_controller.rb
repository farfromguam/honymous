class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.create( params[:comment] )
    if @comment.save
      redirect_to :back
    else
      flash[:notice] = "Fail"
    end
  end
end
