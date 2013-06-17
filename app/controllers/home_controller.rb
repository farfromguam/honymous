class HomeController < ApplicationController
  def index
    @profile_count = Profile.count
    @all_profiles = Profile.all
  end
end
