class Address < ActiveRecord::Base
  belongs_to :user

  has_many :counters
  has_many :comments, :through => :counters

  attr_accessible :ip_address
end