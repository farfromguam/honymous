class Comment < ActiveRecord::Base
  belongs_to :profile

  has_many :counters
  has_many :addresses, :through => :counters
  accepts_nested_attributes_for :counters

  attr_accessible :author, :comment
end