class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  accepts_nested_attributes_for :comments

  attr_accessible :name, :one_liner, :description, :public_profile, :user_id
  validates_presence_of :name, :one_liner, :description

  scope :pp, where(:public_profile => true)

  def self.search(search)
    if search
      pp.find(:all, :conditions => ['name LIKE ?', "%#{search}%"] )
    else
      pp.find(:all)
    end
  end

end