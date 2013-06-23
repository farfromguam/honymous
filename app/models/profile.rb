class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  accepts_nested_attributes_for :comments

  attr_accessible :name, :description, :general_comments, :criticism, :about_myself, :anything, :public_profile, :one_liner, :user_id

  scope :pp, where(:public_profile => true)

  def self.search(search)
    if search
      pp.find(:all, :conditions => ['name LIKE ?', "%#{search}%"] )
    else
      pp.find(:all)
    end
  end

end