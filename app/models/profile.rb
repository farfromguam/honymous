class Profile < ActiveRecord::Base
  has_many :comments
  attr_accessible :name, :description, :general_comments, :criticism, :about_myself, :anything, :public_profile, :one_liner

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end