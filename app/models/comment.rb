class Comment < ActiveRecord::Base
  belongs_to :profile
  has_one :ip_address

  has_many :counters
  has_many :addresses, :through => :counters

  attr_accessible :author, :comment, :ip_address
end