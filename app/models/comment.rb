class Comment < ActiveRecord::Base
  belongs_to :profile
  attr_accessible :author, :comment
end