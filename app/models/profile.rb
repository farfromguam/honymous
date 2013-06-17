class Profile < ActiveRecord::Base
  attr_accessible :name, :description, :comments, :criticism, :about_myself, :anything, :public_profile, :one_liner

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end