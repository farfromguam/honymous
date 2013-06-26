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
      flash[:error] = "Sorry Your profile was not saved"
    end
  end

  def increment
    new_counter("up")
  end

  def decrement
    new_counter("down")
  end

  def new_counter(direction)
    counter = Counter.new( :direction => direction, :comment_id => params[:id] )
    counter.address = Address.find_or_create_by_ip_address(
      :ip_address => request.env['HTTP_X_FORWARDED_FOR']
    )
    if counter.save
      redirect_to :back
    else
      flash[:error] = "Vote not saved, You can't vote twice"
      redirect_to :back
    end
  end

end