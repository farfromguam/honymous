class HomeController < ApplicationController
  def index
    @profile_count = Profile.all.length
    @search = Profile.search( params[:search] )
    @ip = request.env['X_FORWARDED_FOR']
  end
end
