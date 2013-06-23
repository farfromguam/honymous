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

  def increment
    Counter.create( :direction => "up", :comment_id => params[:id] )
    redirect_to :back
  end

  def decrement
    Counter.create( :direction => "down", :comment_id => params[:id] )
    redirect_to :back
  end


end
