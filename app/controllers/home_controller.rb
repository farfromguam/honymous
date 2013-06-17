class HomeController < ApplicationController
  def index
    @profile_count = Profile.count
    @all_profiles = Profile.all
    @profile_search = Profile.search(params[:search])
  end
end
