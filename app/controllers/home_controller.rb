class HomeController < ApplicationController
  def index
    @profile_count = Profile.all.length
    @search = Profile.search( params[:search] )
  end
end
