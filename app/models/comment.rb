class Comment < ActiveRecord::Base
  belongs_to :profile
  has_one :ip_address

  attr_accessible :author, :comment, :ip_address
end